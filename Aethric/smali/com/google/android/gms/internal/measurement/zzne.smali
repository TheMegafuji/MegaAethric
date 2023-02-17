.class public final enum Lcom/google/android/gms/internal/measurement/zzne;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@21.2.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzn:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzo:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzp:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzq:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzr:Lcom/google/android/gms/internal/measurement/zzne;

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/measurement/zzne;


# instance fields
.field private final zzt:Lcom/google/android/gms/internal/measurement/zznf;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzd:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzc:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "FLOAT"

    const/4 v5, 0x5

    .line 2
    invoke-direct {v0, v2, v4, v1, v5}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "INT64"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v0, v2, v6, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzc:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "UINT64"

    const/4 v7, 0x3

    .line 4
    invoke-direct {v0, v2, v7, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "INT32"

    const/4 v8, 0x4

    .line 5
    invoke-direct {v0, v2, v8, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zze:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "FIXED64"

    .line 6
    invoke-direct {v0, v2, v5, v1, v4}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzf:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "FIXED32"

    const/4 v9, 0x6

    .line 7
    invoke-direct {v0, v2, v9, v1, v5}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzg:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zze:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "BOOL"

    const/4 v10, 0x7

    .line 8
    invoke-direct {v0, v2, v10, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzh:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzf:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "STRING"

    const/16 v11, 0x8

    .line 9
    invoke-direct {v0, v2, v11, v1, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzi:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzi:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "GROUP"

    const/16 v12, 0x9

    .line 10
    invoke-direct {v0, v2, v12, v1, v7}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzj:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzi:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "MESSAGE"

    const/16 v13, 0xa

    .line 11
    invoke-direct {v0, v2, v13, v1, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzk:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzg:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "BYTES"

    const/16 v14, 0xb

    .line 12
    invoke-direct {v0, v2, v14, v1, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzl:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "UINT32"

    const/16 v15, 0xc

    .line 13
    invoke-direct {v0, v2, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzm:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzh:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "ENUM"

    const/16 v15, 0xd

    .line 14
    invoke-direct {v0, v2, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzn:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "SFIXED32"

    const/16 v15, 0xe

    .line 15
    invoke-direct {v0, v2, v15, v1, v5}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzo:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "SFIXED64"

    const/16 v15, 0xf

    .line 16
    invoke-direct {v0, v2, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzp:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "SINT32"

    const/16 v15, 0x10

    .line 17
    invoke-direct {v0, v2, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzq:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "SINT64"

    const/16 v15, 0x11

    .line 18
    invoke-direct {v0, v2, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzr:Lcom/google/android/gms/internal/measurement/zzne;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzc:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zze:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzf:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzg:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzh:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v10

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzi:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v11

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzj:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v12

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzk:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v13

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzl:Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v2, v1, v14

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzm:Lcom/google/android/gms/internal/measurement/zzne;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzn:Lcom/google/android/gms/internal/measurement/zzne;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzo:Lcom/google/android/gms/internal/measurement/zzne;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzp:Lcom/google/android/gms/internal/measurement/zzne;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzq:Lcom/google/android/gms/internal/measurement/zzne;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzne;->zzs:[Lcom/google/android/gms/internal/measurement/zzne;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzt:Lcom/google/android/gms/internal/measurement/zznf;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzne;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzs:[Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzne;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzne;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zznf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzt:Lcom/google/android/gms/internal/measurement/zznf;

    return-object v0
.end method
