.class final synthetic Lcom/google/android/gms/internal/drive/zzdl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzdg;


# instance fields
.field private final zzgl:Lcom/google/android/gms/internal/drive/zzdk;

.field private final zzgm:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgl:Lcom/google/android/gms/internal/drive/zzdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgm:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgl:Lcom/google/android/gms/internal/drive/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdl;->zzgm:Lcom/google/android/gms/common/api/Status;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V

    return-void
.end method
