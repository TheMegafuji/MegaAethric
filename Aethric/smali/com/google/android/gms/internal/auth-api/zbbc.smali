.class public final Lcom/google/android/gms/internal/auth-api/zbbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"


# static fields
.field public static final zba:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/google/android/gms/internal/auth-api/zbbc;->zba:I

    return-void
.end method
