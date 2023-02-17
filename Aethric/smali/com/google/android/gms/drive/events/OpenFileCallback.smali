.class public abstract Lcom/google/android/gms/drive/events/OpenFileCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onContents(Lcom/google/android/gms/drive/DriveContents;)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onProgress(JJ)V
.end method
