# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/olshanikov/Documents/android-sdk-macosx/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#-keep class * {
#public private *;
#}
-keep class com.qualcomm.qti.snpe.internal.util.* { *; }
-keepdirectories jniLibs

-dontwarn com.yalantis.ucrop**
-keep class com.yalantis.ucrop** { *; }
-keep interface com.yalantis.ucrop** { *; }
-keep class com.android.vending.billing.**
-keep class android.support.v8.renderscript.** { *; }

-dontwarn javax.annotation.**

-dontskipnonpubliclibraryclassmembers

#ButterKnife

# Retain generated class which implement ViewBinder.
-keep public class * implements butterknife.internal.ViewBinder { public <init>(); }

# Prevent obfuscation of types which use ButterKnife annotations since the simple name
# is used to reflectively look up the generated ViewBinder.
-keep class butterknife.*
-keepclasseswithmembernames class * { @butterknife.* <methods>; }
-keepclasseswithmembernames class * { @butterknife.* <fields>; }

#RxJava

-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
   long producerIndex;
   long consumerIndex;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

-dontwarn sun.misc.**

#okhttp

-dontwarn okio.**

#Retrofit

# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on RoboVM on iOS. Will not be used at runtime.
-dontnote retrofit2.Platform$IOS$MainThreadExecutor
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8
# Retain generic type information for use by reflection by converters and adapters.
-keepattributes Signature
# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions

#Moshi

-dontwarn com.squareup.moshi.**

-keepclassmembers class ** {
    @com.squareup.moshi.FromJson *;
    @com.squareup.moshi.ToJson *;
}

#instabug

-dontwarn com.instabug.**

#glide

-keep class com.bumptech.glide.integration.okhttp3.OkHttpGlideModule

#firebase

-dontwarn com.google.android.gms.maps.**
-dontwarn com.google.firebase.**
-keep class com.google.firebase.** { *; }
-keep interface com.google.firebase.** { *; }

# Appodeal
-keep class com.appodeal.** { *; }
-keep class org.nexage.** { *; }
-keepattributes EnclosingMethod, InnerClasses, Signature, JavascriptInterface

# Amazon
-keep class com.amazon.** { *; }
-dontwarn com.amazon.**

# Mopub
-keep public class com.mopub.**
-keepclassmembers class com.mopub.** { public *; }
-dontwarn com.mopub.**
-keep class * extends com.mopub.mobileads.CustomEventBanner {}
-keepclassmembers class com.mopub.mobileads.CustomEventBannerAdapter {!private !public !protected *;}
-keep class * extends com.mopub.mobileads.CustomEventInterstitial {}
-keep class * extends com.mopub.nativeads.CustomEventNative {}
-keep class * extends com.mopub.mobileads.CustomEventRewardedVideo {}
-keepclassmembers class ** { @com.mopub.common.util.ReflectionTarget *; }
-dontwarn com.mopub.volley.toolbox.**

# Applovin
-keep class com.applovin.** { *; }
-dontwarn com.applovin.**

# Facebook
-keep class com.facebook.ads.** { *; }
-keeppackagenames com.facebook.*
-dontwarn com.facebook.ads.**

# Chartboost
-keep class com.chartboost.** { *; }
-dontwarn com.chartboost.**

# Unity Ads
-keepattributes SourceFile,LineNumberTable
-keep class com.unity3d.** { *; }
-dontwarn com.unity3d.**

# Yandex
-keep class com.yandex.metrica.** { *; }
-dontwarn com.yandex.metrica.**
-keep class com.yandex.mobile.ads.** { *; }
-dontwarn com.yandex.mobile.ads.**
-keepattributes *Annotation*

# StartApp
-keep class com.startapp.** { *;}
-dontwarn com.startapp.**
-dontwarn android.webkit.JavascriptInterface
-keepattributes Exceptions, InnerClasses, Signature, Deprecated, SourceFile, LineNumberTable, *Annotation*, EnclosingMethod

# Flurry
-keep class com.flurry.** { *; }
-dontwarn com.flurry.**
-keepattributes *Annotation*,EnclosingMethod,Signature
-keepclasseswithmembers class * {
  public <init>(android.content.Context, android.util.AttributeSet, int);
}

# Avocarrot
-keep class com.avocarrot.** { *; }
-keepclassmembers class com.avocarrot.** { *; }
-dontwarn com.avocarrot.**
-keep public class * extends android.view.View {
  public <init>(android.content.Context);
  public <init>(android.content.Context, android.util.AttributeSet);
  public <init>(android.content.Context, android.util.AttributeSet, int);
  public void set*(...);
}

# Adcolony
-keep class com.jirbo.adcolony.** { *;}
-keep class com.adcolony.** { *;}
-keep class com.immersion.** { *;}
-dontnote com.immersion.**
-dontwarn android.webkit.**
-dontwarn com.jirbo.adcolony.**
-dontwarn com.adcolony.**
-keepclassmembers class com.adcolony.sdk.ADCNative** { *; }

# Vungle
-keepattributes *Annotation*, Signature
-keep class com.vungle.** { *;}
-dontwarn com.vungle.**
-dontnote com.vungle.**
-dontwarn com.moat.**
-keep class com.moat.analytics.mobile.vng.** { *;}
-keep class com.moat.** { public protected private *; }
-keep class dagger.**
-dontwarn de.greenrobot.event.util.**
-keep class de.greenrobot.event.**
-keep class javax.inject.**
-keep class rx.**
-dontwarn rx.**
-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
   long producerIndex;
   long consumerIndex;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
   rx.internal.util.atomic.LinkedQueueNode producerNode;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
   rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

# MyTarget
-keep class com.my.target.** { *; }
-dontwarn com.my.target.**

# Mobvista
-keepattributes Signature
-keepattributes *Annotation*
-keep class com.mobvista.** {*; }
-keep interface com.mobvista.** {*; }
-keep class android.support.v4.** { *; }
-dontwarn com.mobvista.**
-keep class **.R$* { public static final int mobvista*; }
-keep class com.alphab.** {*; }
-keep interface com.alphab.** {*; }

# Admob
-keep class com.google.android.gms.ads.** { *; }

# Tapjoy
-keep class com.tapjoy.** { *; }
-dontwarn com.tapjoy.**

# IronSource
-keepclassmembers class com.ironsource.sdk.controller.IronSourceWebView$JSInterface { public *; }
-keepclassmembers class * implements android.os.Parcelable { public static final android.os.Parcelable$Creator *; }
-keep public class com.google.android.gms.ads.** { public *; }
-dontwarn com.moat.**
-keep class com.moat.** { public protected private *; }
-keep class com.ironsource.** { *; }
-dontwarn com.ironsource.**

# AdColonyV3
-keepclassmembers class * { @android.webkit.JavascriptInterface <methods>; }
-keep class com.adcolony.** { *; }
-dontwarn com.adcolony.**
-dontwarn android.app.Activity

#Appnext
-keep class com.appnext.** { *; }
-dontwarn com.appnext.**

# Inmobi
-keep class com.inmobi.** { *; }
-dontwarn com.inmobi.**
-dontwarn com.squareup.picasso.**
-keep class com.squareup.picasso.** {*;}
-dontwarn com.squareup.picasso.**
-dontwarn com.squareup.okhttp.**
-keep class com.moat.** {*;}
-dontwarn com.moat.**

# MMdeia
-keepclassmembers class com.millennialmedia** {public *;}
-keep class com.millennialmedia**
-dontwarn com.millennialmedia.**

# Ogury
-dontwarn io.presage.**
-dontnote io.presage.**
-dontwarn shared_presage.**
-dontwarn org.codehaus.**
-keepattributes Signature
-keep class shared_presage.** { *; }
-keep class io.presage.** { *; }
-keepclassmembers class io.presage.** { *; }
-keepattributes *Annotation*
-keepattributes JavascriptInterface
-keepclassmembers class * {
  @android.webkit.JavascriptInterface <methods>;
}
-dontnote okhttp3.**
-dontnote okio.**
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault

-dontnote sun.misc.Unsafe
-dontnote android.net.http.*

-dontnote org.apache.commons.codec.**
-dontnote org.apache.http.**

-dontwarn org.apache.commons.collections.BeanMap
-dontwarn java.beans.**
-dontnote com.google.gson.**
-keepclassmembers class * implements java.io.Serializable {
  static final long serialVersionUID;
  private static final java.io.ObjectStreamField[] serialPersistentFields;
  private void writeObject(java.io.ObjectOutputStream);
  private void readObject(java.io.ObjectInputStream);
  java.lang.Object writeReplace();
  java.lang.Object readResolve();
}

# Google
-keep class com.google.android.gms.common.GooglePlayServicesUtil {*;}
-keep class com.google.android.gms.ads.identifier.** { *; }
-dontwarn com.google.android.gms.**

# Legacy
-keep class org.apache.http.** { *; }
-dontwarn org.apache.http.**
-dontwarn android.net.http.**

# Google Play Services library
-keep class * extends java.util.ListResourceBundle {
  protected Object[][] getContents();
}
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
  public static final *** NULL;
}
-keepnames class * implements android.os.Parcelable
-keepclassmembers class * implements android.os.Parcelable {
  public static final *** CREATOR;
}
-keep @interface android.support.annotation.Keep
-keep @android.support.annotation.Keep class *
-keepclasseswithmembers class * {
  @android.support.annotation.Keep <fields>;
}
-keepclasseswithmembers class * {
  @android.support.annotation.Keep <methods>;
}
-keep @interface com.google.android.gms.common.annotation.KeepName
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
  @com.google.android.gms.common.annotation.KeepName *;
}
-keep @interface com.google.android.gms.common.util.DynamiteApi
-keep public @com.google.android.gms.common.util.DynamiteApi class * {
  public <fields>;
  public <methods>;
}
-keep class com.google.android.gms.common.GooglePlayServicesNotAvailableException {*;}
-keep class com.google.android.gms.common.GooglePlayServicesRepairableException {*;}

# Google Play Services library 9.0.0 only
-dontwarn android.security.NetworkSecurityPolicy
-keep public @com.google.android.gms.common.util.DynamiteApi class * { *; }

# support-v4
-keep class android.support.v4.app.Fragment { *; }
-keep class android.support.v4.app.FragmentActivity { *; }
-keep class android.support.v4.app.FragmentManager { *; }
-keep class android.support.v4.app.FragmentTransaction { *; }
-keep class android.support.v4.content.ContextCompat { *; }
-keep class android.support.v4.content.LocalBroadcastManager { *; }
-keep class android.support.v4.util.LruCache { *; }
-keep class android.support.v4.view.PagerAdapter { *; }
-keep class android.support.v4.view.ViewPager { *; }
-keep class android.support.v4.content.ContextCompat { *; }

# support-v7-recyclerview
-keep class android.support.v7.widget.RecyclerView { *; }
-keep class android.support.v7.widget.LinearLayoutManager { *; }

# Retrofit
-dontwarn okio.**
-dontwarn retrofit2.Platform$Java8

# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8
# Retain generic type information for use by reflection by converters and adapters.
-keepattributes Signature
# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions

-keep class android.support.v8.renderscript.** { *; }
