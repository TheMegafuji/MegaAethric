.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final zzh:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field zza:Z

.field zzb:I

.field zzc:I

.field zzd:Ljava/util/ArrayList;

.field zze:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field zzf:I

.field zzg:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzh:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zza:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzb:I

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzc:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzd:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zze:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzf:I

    sget-object v0, Lcom/google/android/gms/games/internal/zzf;->zza:Lcom/google/android/gms/games/internal/zzf;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzg:Lcom/google/android/gms/games/internal/zzf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/zzm;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zza:Z

    const/16 p2, 0x11

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzb:I

    const/16 p2, 0x1110

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzc:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzd:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zze:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/16 p2, 0x9

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzf:I

    sget-object p2, Lcom/google/android/gms/games/internal/zzf;->zza:Lcom/google/android/gms/games/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzg:Lcom/google/android/gms/games/internal/zzf;

    if-eqz p1, :cond_0

    iget-boolean p2, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzb:Z

    iput-boolean p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zza:Z

    iget p2, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzc:I

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzb:I

    iget p2, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zze:I

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzc:I

    iget-object p2, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzg:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzd:Ljava/util/ArrayList;

    iget-object p2, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zze:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget p2, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzm:I

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzf:I

    iget-object p1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzo:Lcom/google/android/gms/games/internal/zzf;

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzg:Lcom/google/android/gms/games/internal/zzf;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/zzm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zza:Z

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzb:I

    const/16 p1, 0x1110

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzc:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzd:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zze:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/16 p1, 0x9

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzf:I

    sget-object p1, Lcom/google/android/gms/games/internal/zzf;->zza:Lcom/google/android/gms/games/internal/zzf;

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzg:Lcom/google/android/gms/games/internal/zzf;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/Games$GamesOptions;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v19, Lcom/google/android/gms/games/Games$GamesOptions;

    move-object/from16 v1, v19

    iget-boolean v3, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zza:Z

    iget v4, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzb:I

    iget v6, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzc:I

    iget-object v8, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzd:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zze:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget v15, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzf:I

    iget-object v2, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzg:Lcom/google/android/gms/games/internal/zzf;

    move-object/from16 v17, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/games/zzn;)V

    return-object v19
.end method

.method public setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzc:I

    return-object p0
.end method

.method public setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zza:Z

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzb:I

    return-object p0
.end method

.method public setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zza:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzb:I

    return-object p0
.end method
