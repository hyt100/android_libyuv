# android_libyuv
编译安卓版本 libyuv 库步骤：

1. 创建jni目录，必须用jni这个名字；
2. 在jni目录下创建Android.mk，源码也放在当前目录或子目录中；
3. 在jni目录下创建Application.mk，APP_ABI中设置需要产生的平台库，可以多个；
4. 在jni目录下创建build.sh，用于编译；
5. 运行build.sh，编译后将会在jni同一层目录中创建obj目录，并输出结果；