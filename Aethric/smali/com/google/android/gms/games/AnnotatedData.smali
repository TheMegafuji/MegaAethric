.class public Lcom/google/android/gms/games/AnnotatedData;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/AnnotatedData;->zza:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/android/gms/games/AnnotatedData;->zzb:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/AnnotatedData;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public isStale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/AnnotatedData;->zzb:Z

    return v0
.end method
