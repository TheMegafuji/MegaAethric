.class public interface abstract annotation Lcom/google/android/gms/auth/api/phone/SmsCodeAutofillClient$PermissionState;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.1"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/phone/SmsCodeAutofillClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PermissionState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DENIED:I = 0x2

.field public static final GRANTED:I = 0x1

.field public static final NONE:I
