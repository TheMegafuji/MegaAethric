.class public interface abstract Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
.super Ljava/lang/Object;
.source "CrashlyticsNativeComponent.java"


# virtual methods
.method public abstract getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;
.end method

.method public abstract hasCrashDataForCurrentSession()Z
.end method

.method public abstract hasCrashDataForSession(Ljava/lang/String;)Z
.end method

.method public abstract prepareNativeSession(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)V
.end method
