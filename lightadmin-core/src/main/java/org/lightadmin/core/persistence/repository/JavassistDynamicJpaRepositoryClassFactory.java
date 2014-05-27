package org.lightadmin.core.persistence.repository;

import javassist.ClassPool;
import javassist.CtClass;
import org.lightadmin.core.extension.DynamicRepositoryBeanNameGenerator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.ClassUtils;
import org.springframework.util.StringUtils;

import java.io.Serializable;
import java.util.UUID;

import static javassist.bytecode.SignatureAttribute.*;

public class JavassistDynamicJpaRepositoryClassFactory implements DynamicRepositoryClassFactory {

    private final Logger logger = LoggerFactory.getLogger(JavassistDynamicJpaRepositoryClassFactory.class);

    private final DynamicRepositoryBeanNameGenerator dynamicRepositoryBeanNameGenerator;
    private final ClassLoader classLoader;

    public JavassistDynamicJpaRepositoryClassFactory(DynamicRepositoryBeanNameGenerator dynamicRepositoryBeanNameGenerator) {
        this.dynamicRepositoryBeanNameGenerator = dynamicRepositoryBeanNameGenerator;
        this.classLoader = ClassUtils.getDefaultClassLoader();
    }

    @Override
    @SuppressWarnings("unchecked")
    public <T, ID extends Serializable> Class<DynamicJpaRepository<T, ID>> createDynamicRepositoryClass(Class<T> domainType, Class<ID> idType) {
        try {
            ClassPool classPool = ClassPool.getDefault();

            CtClass baseInterface = classPool.getOrNull(DynamicJpaRepository.class.getName());
            if (baseInterface == null) {
                baseInterface = classPool.makeInterface(DynamicJpaRepository.class.getName());
            }

            CtClass dynamicRepositoryInterface = classPool.makeInterface(generateDynamicRepositoryClassReference(domainType), baseInterface);

            ClassType baseInterfaceType = new ClassType(DynamicJpaRepository.class.getName(),
                    new TypeArgument[]{new TypeArgument(new ClassType(domainType.getName())), new TypeArgument(new ClassType(idType.getName()))});
            ClassSignature signature = new ClassSignature(null, null, new ClassType[]{baseInterfaceType});
            dynamicRepositoryInterface.setGenericSignature(signature.encode());

            return dynamicRepositoryInterface.toClass(classLoader, JavassistDynamicJpaRepositoryClassFactory.class.getProtectionDomain());
        } catch (Exception e) {
            logger.error("Problem occured during DynamicRepository class creation process", e);
            throw new RuntimeException(e);
        }
    }

    private String generateDynamicRepositoryClassReference(Class<?> domainType) {
        String uuid = StringUtils.deleteAny(UUID.randomUUID().toString(), "-");
        String packageName = ClassUtils.getPackageName(JavassistDynamicJpaRepositoryClassFactory.class);
        String domainRepositoryClassName = dynamicRepositoryBeanNameGenerator.generateBeanName(domainType, DynamicJpaRepository.class);

        return packageName + "." + domainRepositoryClassName + "$$DYNAMIC$$" + uuid;
    }
}