.class final Lcom/google/android/gms/internal/drive/zzlu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzmf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/drive/zzmf<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzub:[I

.field private static final zzuc:Lsun/misc/Unsafe;


# instance fields
.field private final zzud:[I

.field private final zzue:[Ljava/lang/Object;

.field private final zzuf:I

.field private final zzug:I

.field private final zzuh:Lcom/google/android/gms/internal/drive/zzlq;

.field private final zzui:Z

.field private final zzuj:Z

.field private final zzuk:Z

.field private final zzul:Z

.field private final zzum:[I

.field private final zzun:I

.field private final zzuo:I

.field private final zzup:Lcom/google/android/gms/internal/drive/zzly;

.field private final zzuq:Lcom/google/android/gms/internal/drive/zzla;

.field private final zzur:Lcom/google/android/gms/internal/drive/zzmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzus:Lcom/google/android/gms/internal/drive/zzjy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzjy<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzut:Lcom/google/android/gms/internal/drive/zzll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 3542
    sput-object v0, Lcom/google/android/gms/internal/drive/zzlu;->zzub:[I

    .line 3543
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzff()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/drive/zzlq;ZZ[IIILcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/drive/zzlq;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/drive/zzly;",
            "Lcom/google/android/gms/internal/drive/zzla;",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "**>;",
            "Lcom/google/android/gms/internal/drive/zzjy<",
            "*>;",
            "Lcom/google/android/gms/internal/drive/zzll;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuf:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzug:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/drive/zzkk;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuj:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/drive/zzjy;->zze(Lcom/google/android/gms/internal/drive/zzlq;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuo:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzup:Lcom/google/android/gms/internal/drive/zzly;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuq:Lcom/google/android/gms/internal/drive/zzla;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuh:Lcom/google/android/gms/internal/drive/zzlq;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1205
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1206
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzn(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/drive/zziz;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 2908
    sget-object v12, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    .line 2909
    iget-object v7, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 2990
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 2991
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2992
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 2993
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 2996
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 2997
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 2998
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2999
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    .line 2984
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2985
    iget-wide v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    .line 2980
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2981
    iget v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    .line 2971
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v3

    .line 2972
    iget v4, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 2973
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2974
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/drive/zzko;->zzan(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2977
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    .line 2975
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 2967
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2968
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 2954
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v2

    move/from16 v5, p4

    .line 2955
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2956
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 2957
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 2960
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 2961
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 2962
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2963
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2964
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 2940
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2941
    iget v4, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 2943
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 2945
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/drive/zznf;->zze([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 2946
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdn()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2947
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2948
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 2950
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    .line 2936
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2937
    iget-wide v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 2932
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 2928
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_a
    if-nez v5, :cond_a

    .line 2924
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2925
    iget v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    .line 2920
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2921
    iget-wide v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 2916
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v4, 0x4

    goto :goto_9

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 2912
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x8

    .line 3000
    :goto_9
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v4

    :goto_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/drive/zziz;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 2531
    sget-object v11, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/drive/zzkp;

    .line 2532
    invoke-interface {v11}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 2533
    invoke-interface {v11}, Lcom/google/android/gms/internal/drive/zzkp;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 2536
    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v11

    .line 2537
    sget-object v12, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_32

    .line 2848
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 2852
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2853
    iget-object v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_32

    .line 2855
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v8

    .line 2856
    iget v9, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v9, :cond_32

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 2857
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2858
    iget-object v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v10, :cond_4

    .line 2823
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2824
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2825
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 2827
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2828
    iget-wide v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_1e

    .line 2830
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_32

    .line 2835
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2836
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2837
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    :goto_3
    if-ge v1, v5, :cond_33

    .line 2839
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2840
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2841
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2842
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v10, :cond_7

    .line 2798
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2799
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2800
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    .line 2802
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2803
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_1e

    .line 2805
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_32

    .line 2810
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2811
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2812
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    :goto_5
    if-ge v1, v5, :cond_33

    .line 2814
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2815
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2816
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2817
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v10, :cond_8

    .line 2785
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_32

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 2787
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2788
    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object v3, v1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 2789
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfa()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    .line 2792
    :cond_9
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    move/from16 v6, p6

    .line 2793
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzko;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/drive/zzmy;

    if-eqz v3, :cond_a

    .line 2795
    iput-object v3, v1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_1e

    :pswitch_4
    if-ne v6, v10, :cond_32

    .line 2758
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2759
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v4, :cond_10

    .line 2762
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_f

    if-nez v4, :cond_b

    .line 2765
    sget-object v4, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2766
    :cond_b
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/drive/zzjc;->zzb([BII)Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_33

    .line 2769
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2770
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2771
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2772
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v4, :cond_e

    .line 2775
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_d

    if-nez v4, :cond_c

    .line 2778
    sget-object v4, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2779
    :cond_c
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/drive/zzjc;->zzb([BII)Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2776
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2774
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2763
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2761
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v10, :cond_32

    .line 2753
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 2754
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_6
    if-ne v6, v10, :cond_32

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    if-nez v6, :cond_15

    .line 2697
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2698
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_14

    if-nez v6, :cond_11

    .line 2702
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2703
    :cond_11
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2704
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/2addr v4, v6

    :goto_b
    if-ge v4, v5, :cond_32

    .line 2707
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 2708
    iget v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v8, :cond_32

    .line 2709
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2710
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_13

    if-nez v6, :cond_12

    .line 2714
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2715
    :cond_12
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2716
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2712
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2700
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2723
    :cond_15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2724
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_1b

    if-nez v6, :cond_16

    .line 2728
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    add-int v8, v4, v6

    .line 2729
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/drive/zznf;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2731
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2732
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_c
    move v4, v8

    :goto_d
    if-ge v4, v5, :cond_32

    .line 2735
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 2736
    iget v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v8, :cond_32

    .line 2737
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2738
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_19

    if-nez v6, :cond_17

    .line 2742
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    add-int v8, v4, v6

    .line 2743
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/drive/zznf;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 2745
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2746
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2744
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdn()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2740
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2730
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdn()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2726
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v10, :cond_1f

    .line 2670
    check-cast v11, Lcom/google/android/gms/internal/drive/zzja;

    .line 2671
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2672
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v4, v2

    :goto_e
    if-ge v2, v4, :cond_1d

    .line 2674
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2675
    iget-wide v5, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_1c

    const/4 v5, 0x1

    goto :goto_f

    :cond_1c
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/drive/zzja;->addBoolean(Z)V

    goto :goto_e

    :cond_1d
    if-ne v2, v4, :cond_1e

    goto/16 :goto_7

    .line 2677
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_1f
    if-nez v6, :cond_32

    .line 2682
    check-cast v11, Lcom/google/android/gms/internal/drive/zzja;

    .line 2683
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2684
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    goto :goto_10

    :cond_20
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/drive/zzja;->addBoolean(Z)V

    :goto_11
    if-ge v4, v5, :cond_32

    .line 2686
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 2687
    iget v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v8, :cond_32

    .line 2688
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2689
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_12

    :cond_21
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/drive/zzja;->addBoolean(Z)V

    goto :goto_11

    :pswitch_8
    if-ne v6, v10, :cond_24

    .line 2645
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2646
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2647
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_22

    .line 2649
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_22
    if-ne v1, v2, :cond_23

    goto/16 :goto_1e

    .line 2652
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v9, :cond_32

    .line 2657
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2658
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    :goto_14
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 2661
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2662
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2663
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    goto :goto_14

    :pswitch_9
    if-ne v6, v10, :cond_27

    .line 2620
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2621
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2622
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_25

    .line 2624
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_15

    :cond_25
    if-ne v1, v2, :cond_26

    goto/16 :goto_1e

    .line 2627
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_27
    if-ne v6, v13, :cond_32

    .line 2632
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2633
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    :goto_16
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 2636
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2637
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2638
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_16

    :pswitch_a
    if-ne v6, v10, :cond_28

    .line 2615
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    goto/16 :goto_1e

    :cond_28
    if-nez v6, :cond_32

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 2617
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_b
    if-ne v6, v10, :cond_2b

    .line 2591
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2592
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2593
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_29

    .line 2595
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2596
    iget-wide v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_17

    :cond_29
    if-ne v1, v2, :cond_2a

    goto/16 :goto_1e

    .line 2598
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_32

    .line 2603
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2604
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2605
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    :goto_18
    if-ge v1, v5, :cond_33

    .line 2607
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2608
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2609
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2610
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_18

    :pswitch_c
    if-ne v6, v10, :cond_2e

    .line 2566
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkh;

    .line 2567
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2568
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_2c

    .line 2570
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_19

    :cond_2c
    if-ne v1, v2, :cond_2d

    goto :goto_1e

    .line 2573
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_2e
    if-ne v6, v9, :cond_32

    .line 2578
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkh;

    .line 2579
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(F)V

    :goto_1a
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 2582
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2583
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2584
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(F)V

    goto :goto_1a

    :pswitch_d
    if-ne v6, v10, :cond_31

    .line 2541
    check-cast v11, Lcom/google/android/gms/internal/drive/zzju;

    .line 2542
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2543
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_2f

    .line 2545
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzju;->zzc(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1b

    :cond_2f
    if-ne v1, v2, :cond_30

    goto :goto_1e

    .line 2548
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v13, :cond_32

    .line 2553
    check-cast v11, Lcom/google/android/gms/internal/drive/zzju;

    .line 2554
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzju;->zzc(D)V

    :goto_1c
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 2557
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2558
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_33

    .line 2559
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzju;->zzc(D)V

    goto :goto_1c

    :cond_32
    :goto_1d
    move v1, v4

    :cond_33
    :goto_1e
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/drive/zziz;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2863
    sget-object v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    .line 2864
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object p5

    .line 2865
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2866
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/drive/zzll;->zzj(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2868
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/drive/zzll;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2869
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/drive/zzll;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 2871
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2872
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2873
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/drive/zzll;->zzh(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 2875
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    .line 2876
    iget p6, p8, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz p6, :cond_7

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_7

    add-int/2addr p6, p3

    .line 2880
    iget-object p7, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztv:Ljava/lang/Object;

    .line 2881
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztx:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_5

    add-int/lit8 v1, p3, 0x1

    .line 2883
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 2885
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2886
    iget p3, p8, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    :cond_1
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 2895
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztw:Lcom/google/android/gms/internal/drive/zznm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zznm;->zzfk()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 2896
    iget-object v4, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztw:Lcom/google/android/gms/internal/drive/zznm;

    iget-object p3, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztx:Ljava/lang/Object;

    .line 2897
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 2898
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza([BIILcom/google/android/gms/internal/drive/zznm;Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    .line 2899
    iget-object v0, p8, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_0

    .line 2890
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztu:Lcom/google/android/gms/internal/drive/zznm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zznm;->zzfk()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 2891
    iget-object v4, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztu:Lcom/google/android/gms/internal/drive/zznm;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 2892
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza([BIILcom/google/android/gms/internal/drive/zznm;Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    .line 2893
    iget-object p7, p8, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_0

    .line 2901
    :cond_4
    :goto_1
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p6, :cond_6

    .line 2905
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 2904
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1

    .line 2878
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1
.end method

.method private static zza([BIILcom/google/android/gms/internal/drive/zznm;Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zziz;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/drive/zznm;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2494
    sget-object v0, Lcom/google/android/gms/internal/drive/zzlv;->zzox:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/drive/zznm;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 2529
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2527
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    goto/16 :goto_3

    .line 2524
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2525
    iget-wide p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto/16 :goto_3

    .line 2521
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2522
    iget p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto/16 :goto_3

    .line 2518
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object p3

    .line 2519
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    goto :goto_3

    .line 2515
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2516
    iget-wide p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_3

    .line 2512
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2513
    iget p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_3

    .line 2509
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_0

    .line 2506
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_1

    .line 2503
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    .line 2500
    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    .line 2498
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    goto :goto_3

    .line 2495
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2496
    iget-wide p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/drive/zzlo;",
            "Lcom/google/android/gms/internal/drive/zzly;",
            "Lcom/google/android/gms/internal/drive/zzla;",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "**>;",
            "Lcom/google/android/gms/internal/drive/zzjy<",
            "*>;",
            "Lcom/google/android/gms/internal/drive/zzll;",
            ")",
            "Lcom/google/android/gms/internal/drive/zzlu<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzme;

    if-eqz v1, :cond_34

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/drive/zzme;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzec()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsg:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzek()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    const/4 v8, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_1

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 35
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 39
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    move v8, v12

    :cond_4
    if-nez v9, :cond_5

    .line 51
    sget-object v9, Lcom/google/android/gms/internal/drive/zzlu;->zzub:[I

    move-object v14, v9

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 53
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 57
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_6
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v12

    :cond_7
    add-int/lit8 v10, v9, 0x1

    .line 62
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 66
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_8

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_8
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_9
    add-int/lit8 v12, v10, 0x1

    .line 71
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 75
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_a

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_a
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_b
    add-int/lit8 v13, v12, 0x1

    .line 80
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 84
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_c

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_c
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_d
    add-int/lit8 v14, v13, 0x1

    .line 89
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 93
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_f
    add-int/lit8 v15, v14, 0x1

    .line 98
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 102
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 107
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_12

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_12
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v3, v17

    goto :goto_b

    :cond_13
    move/from16 v3, v16

    :goto_b
    add-int/lit8 v16, v3, 0x1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v17, v6, 0x1

    .line 120
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v3, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v17

    goto :goto_c

    :cond_14
    shl-int v6, v6, v16

    or-int/2addr v3, v6

    move/from16 v16, v17

    :cond_15
    add-int v6, v3, v14

    add-int/2addr v6, v15

    .line 125
    new-array v6, v6, [I

    shl-int/lit8 v15, v8, 0x1

    add-int/2addr v15, v9

    move v9, v12

    move v12, v15

    move v15, v3

    move v3, v8

    move/from16 v8, v16

    move/from16 v35, v14

    move-object v14, v6

    move/from16 v6, v35

    .line 127
    :goto_d
    sget-object v7, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzel()[Ljava/lang/Object;

    move-result-object v17

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzee()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move/from16 v18, v8

    mul-int/lit8 v8, v13, 0x3

    .line 131
    new-array v8, v8, [I

    const/16 v19, 0x1

    shl-int/lit8 v13, v13, 0x1

    .line 132
    new-array v13, v13, [Ljava/lang/Object;

    add-int v20, v15, v6

    move/from16 v22, v15

    move/from16 v6, v18

    move/from16 v23, v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    :goto_e
    if-ge v6, v2, :cond_33

    add-int/lit8 v24, v6, 0x1

    .line 137
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v26, v2, 0x1

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v6, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    move/from16 v15, v27

    goto :goto_f

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v6, v2

    move/from16 v2, v26

    goto :goto_10

    :cond_17
    move/from16 v27, v15

    move/from16 v2, v24

    :goto_10
    add-int/lit8 v15, v2, 0x1

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_11
    add-int/lit8 v26, v15, 0x1

    .line 150
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v11

    const v11, 0xd800

    if-lt v15, v11, :cond_18

    and-int/lit16 v11, v15, 0x1fff

    shl-int v11, v11, v24

    or-int/2addr v2, v11

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v11, v28

    goto :goto_11

    :cond_18
    shl-int v11, v15, v24

    or-int/2addr v2, v11

    move/from16 v15, v26

    goto :goto_12

    :cond_19
    move/from16 v28, v11

    move/from16 v15, v24

    :goto_12
    and-int/lit16 v11, v2, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v18, 0x1

    .line 157
    aput v21, v14, v18

    move/from16 v18, v9

    :cond_1a
    const/16 v9, 0x33

    move/from16 v30, v10

    if-lt v11, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    .line 159
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v10, 0xd800

    if-lt v15, v10, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    :goto_13
    add-int/lit8 v33, v9, 0x1

    .line 163
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_1b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v32

    or-int/2addr v15, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v9, v33

    const v10, 0xd800

    goto :goto_13

    :cond_1b
    shl-int v9, v9, v32

    or-int/2addr v15, v9

    move/from16 v9, v33

    :cond_1c
    add-int/lit8 v10, v11, -0x33

    move/from16 v32, v9

    const/16 v9, 0x9

    if-eq v10, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v10, v9, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v9, 0xc

    if-ne v10, v9, :cond_1e

    and-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    .line 173
    div-int/lit8 v9, v21, 0x3

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move v12, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_15

    .line 170
    :cond_1f
    :goto_14
    div-int/lit8 v9, v21, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v19, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move/from16 v12, v19

    :goto_15
    shl-int/lit8 v9, v15, 0x1

    .line 175
    aget-object v10, v17, v9

    .line 176
    instance-of v15, v10, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_20

    .line 177
    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 178
    :cond_20
    check-cast v10, Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 179
    aput-object v10, v17, v9

    :goto_16
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    .line 180
    invoke-virtual {v7, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v9, v9, 0x1

    .line 182
    aget-object v0, v17, v9

    .line 183
    instance-of v10, v0, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    .line 184
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 185
    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 186
    aput-object v0, v17, v9

    .line 187
    :goto_17
    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v0, v9

    move-object/from16 v19, v4

    move/from16 v31, v12

    move/from16 v15, v32

    move-object/from16 v10, v34

    const/4 v12, 0x0

    const/16 v16, 0x1

    move v4, v0

    move v0, v3

    const v3, 0xd800

    goto/16 :goto_20

    :cond_22
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    add-int/lit8 v0, v12, 0x1

    .line 190
    aget-object v1, v17, v12

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v9, 0x31

    const/16 v10, 0x9

    if-eq v11, v10, :cond_2a

    const/16 v10, 0x11

    if-ne v11, v10, :cond_23

    goto :goto_1b

    :cond_23
    const/16 v10, 0x1b

    if-eq v11, v10, :cond_29

    if-ne v11, v9, :cond_24

    goto :goto_19

    :cond_24
    const/16 v10, 0xc

    if-eq v11, v10, :cond_28

    const/16 v10, 0x1e

    if-eq v11, v10, :cond_28

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_25

    goto :goto_18

    :cond_25
    const/16 v10, 0x32

    if-ne v11, v10, :cond_26

    add-int/lit8 v10, v22, 0x1

    .line 199
    aput v21, v14, v22

    .line 200
    div-int/lit8 v12, v21, 0x3

    const/16 v19, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int/lit8 v22, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v12

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v0, v22, 0x1

    .line 202
    aget-object v22, v17, v22

    aput-object v22, v13, v12

    move/from16 v22, v10

    :cond_26
    const/4 v12, 0x1

    goto :goto_1c

    :cond_27
    move/from16 v0, v22

    const/4 v12, 0x1

    move/from16 v22, v10

    goto :goto_1c

    :cond_28
    :goto_18
    and-int/lit8 v10, v5, 0x1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2b

    .line 197
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    goto :goto_1a

    :cond_29
    :goto_19
    const/4 v12, 0x1

    .line 194
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    :goto_1a
    move/from16 v0, v19

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/4 v12, 0x1

    .line 192
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v13, v10

    .line 203
    :cond_2b
    :goto_1c
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    and-int/lit8 v9, v5, 0x1

    if-ne v9, v12, :cond_2f

    const/16 v9, 0x11

    if-gt v11, v9, :cond_2f

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v10, v34

    .line 205
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v15, 0xd800

    if-lt v12, v15, :cond_2d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v16, 0xd

    :goto_1d
    add-int/lit8 v29, v9, 0x1

    .line 209
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v15, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v16

    or-int/2addr v12, v9

    add-int/lit8 v16, v16, 0xd

    move/from16 v9, v29

    goto :goto_1d

    :cond_2c
    shl-int v9, v9, v16

    or-int/2addr v12, v9

    move/from16 v9, v29

    :cond_2d
    const/16 v16, 0x1

    shl-int/lit8 v19, v3, 0x1

    .line 214
    div-int/lit8 v29, v12, 0x20

    add-int v19, v19, v29

    .line 215
    aget-object v15, v17, v19

    move/from16 v31, v0

    .line 216
    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    .line 217
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 218
    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 219
    aput-object v15, v17, v19

    :goto_1e
    move v0, v3

    move-object/from16 v19, v4

    .line 220
    invoke-virtual {v7, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 221
    rem-int/lit8 v12, v12, 0x20

    move v15, v9

    const v3, 0xd800

    goto :goto_1f

    :cond_2f
    move/from16 v31, v0

    move v0, v3

    move-object/from16 v19, v4

    move-object/from16 v10, v34

    const v3, 0xd800

    const/16 v16, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_1f
    const/16 v9, 0x12

    if-lt v11, v9, :cond_30

    const/16 v9, 0x31

    if-gt v11, v9, :cond_30

    add-int/lit8 v9, v23, 0x1

    .line 226
    aput v1, v14, v23

    move/from16 v23, v9

    :cond_30
    :goto_20
    add-int/lit8 v9, v21, 0x1

    .line 227
    aput v6, v8, v21

    add-int/lit8 v6, v9, 0x1

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_31

    const/high16 v3, 0x20000000

    goto :goto_21

    :cond_31
    const/4 v3, 0x0

    :goto_21
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_22

    :cond_32
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x14

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 230
    aput v1, v8, v9

    add-int/lit8 v21, v6, 0x1

    shl-int/lit8 v1, v12, 0x14

    or-int/2addr v1, v4

    .line 231
    aput v1, v8, v6

    move v3, v0

    move-object v1, v10

    move v6, v15

    move-object/from16 v4, v19

    move/from16 v9, v24

    move/from16 v2, v25

    move/from16 v15, v27

    move/from16 v11, v28

    move/from16 v10, v30

    move/from16 v12, v31

    move-object/from16 v0, v33

    goto/16 :goto_e

    :cond_33
    move-object/from16 v33, v0

    move/from16 v24, v9

    move/from16 v30, v10

    move/from16 v28, v11

    move/from16 v27, v15

    .line 233
    new-instance v0, Lcom/google/android/gms/internal/drive/zzlu;

    .line 234
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/internal/drive/zzme;->zzee()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v10

    const/4 v12, 0x0

    move-object v5, v0

    move-object v6, v8

    move-object v7, v13

    move/from16 v8, v30

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/drive/zzlu;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/drive/zzlq;ZZ[IIILcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)V

    return-object v0

    .line 236
    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/drive/zzms;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzms;->zzec()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsg:I

    .line 238
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/drive/zzko;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmx;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/drive/zzko;",
            "TUB;",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3368
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 3369
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object p1

    .line 3370
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3371
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/drive/zzko;->zzan(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 3374
    invoke-virtual {p6}, Lcom/google/android/gms/internal/drive/zzmx;->zzez()Ljava/lang/Object;

    move-result-object p5

    .line 3376
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zzli;->zza(Lcom/google/android/gms/internal/drive/zzlj;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3377
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjc;->zzu(I)Lcom/google/android/gms/internal/drive/zzjk;

    move-result-object v1

    .line 3378
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzjk;->zzby()Lcom/google/android/gms/internal/drive/zzjr;

    move-result-object v2

    .line 3379
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/drive/zzli;->zza(Lcom/google/android/gms/internal/drive/zzjr;Lcom/google/android/gms/internal/drive/zzlj;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3383
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzjk;->zzbx()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/drive/zzmx;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzjc;)V

    .line 3384
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3382
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 241
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 242
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 243
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3458
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3459
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/String;)V

    return-void

    .line 3460
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/drive/zzns;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2487
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/drive/zzns;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2483
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2484
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/drive/zzll;->zzi(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2485
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzlj;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 541
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 544
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 547
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 549
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 550
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 551
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 553
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 3473
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 3474
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3504
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3503
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 3502
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 3501
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 3500
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 3499
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 3498
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 3497
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 3496
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/drive/zzjc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 3495
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 3489
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 3490
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 3491
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 3492
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz p2, :cond_c

    .line 3493
    sget-object p2, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/drive/zzjc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 3494
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3488
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3487
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 3486
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 3485
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 3484
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 3483
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 3482
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 3481
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 3505
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 3507
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 3517
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3518
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 3470
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_0

    .line 3471
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzmf;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 3456
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 3457
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/drive/zzmf;->zzp(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzap(I)Lcom/google/android/gms/internal/drive/zzmf;
    .locals 3

    .line 3002
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3003
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/drive/zzmf;

    if-eqz v0, :cond_0

    return-object v0

    .line 3006
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    .line 3007
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzaq(I)Ljava/lang/Object;
    .locals 1

    .line 3009
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzar(I)Lcom/google/android/gms/internal/drive/zzko;
    .locals 1

    .line 3010
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzko;

    return-object p1
.end method

.method private final zzas(I)I
    .locals 1

    .line 3462
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzat(I)I
    .locals 1

    .line 3463
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzau(I)I
    .locals 1

    .line 3522
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuf:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzug:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3523
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzq(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 3508
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_0

    return-void

    .line 3510
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 3514
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 3515
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 3519
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3520
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/drive/zzns;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2157
    iget-boolean v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v3, :cond_0

    .line 2158
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v3

    .line 2160
    iget-object v5, v3, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/drive/zzmi;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2162
    invoke-virtual {v3}, Lcom/google/android/gms/internal/drive/zzkb;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 2166
    iget-object v7, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v7, v7

    .line 2167
    sget-object v8, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    .line 2169
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v12

    .line 2171
    iget-object v13, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v14, v13, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    .line 2177
    iget-boolean v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    .line 2178
    aget v4, v13, v4

    and-int v13, v4, v16

    move/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    .line 2182
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v13

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 2184
    iget-object v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 2185
    iget-object v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 2186
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    and-int v9, v12, v16

    int-to-long v9, v9

    move/from16 v12, v17

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2471
    :pswitch_0
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2473
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    .line 2474
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto :goto_3

    .line 2469
    :pswitch_1
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2470
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto :goto_3

    .line 2467
    :pswitch_2
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2468
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto :goto_3

    .line 2465
    :pswitch_3
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2466
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto :goto_3

    .line 2463
    :pswitch_4
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2464
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto :goto_3

    .line 2461
    :pswitch_5
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2462
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto :goto_3

    .line 2459
    :pswitch_6
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2460
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto :goto_3

    .line 2457
    :pswitch_7
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2458
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto :goto_3

    .line 2453
    :pswitch_8
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2454
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2455
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 2451
    :pswitch_9
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2452
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_3

    .line 2449
    :pswitch_a
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2450
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_3

    .line 2447
    :pswitch_b
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2448
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto/16 :goto_3

    .line 2445
    :pswitch_c
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2446
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto/16 :goto_3

    .line 2443
    :pswitch_d
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2444
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto/16 :goto_3

    .line 2441
    :pswitch_e
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2442
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto/16 :goto_3

    .line 2439
    :pswitch_f
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2440
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto/16 :goto_3

    .line 2437
    :pswitch_10
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2438
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto/16 :goto_3

    .line 2435
    :pswitch_11
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2436
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    goto/16 :goto_3

    .line 2433
    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 2427
    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2429
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2430
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 2431
    invoke-static {v4, v9, v2, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 2421
    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2422
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x1

    .line 2423
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    .line 2415
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2416
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2417
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    .line 2409
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2410
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2411
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    .line 2403
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2404
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2405
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    .line 2397
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2398
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2399
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    .line 2391
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2392
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2393
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    .line 2385
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2386
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2387
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    .line 2379
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2380
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2381
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    .line 2373
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2374
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2375
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    .line 2367
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2368
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2369
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    .line 2361
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2362
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2363
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    .line 2355
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2356
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2357
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    .line 2349
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2350
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2351
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    .line 2343
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2344
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2345
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 2337
    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2338
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 2339
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    .line 2331
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2332
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2333
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    .line 2325
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2326
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2327
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    .line 2319
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2320
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2321
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    .line 2313
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2314
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2315
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    .line 2307
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2308
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2309
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    .line 2301
    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2302
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2303
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_3

    .line 2293
    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2295
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2296
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 2297
    invoke-static {v4, v9, v2, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 2287
    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2288
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2289
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_3

    .line 2281
    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2282
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 2283
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    .line 2275
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2276
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2277
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    .line 2269
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2270
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2271
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    .line 2263
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2264
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2265
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    .line 2257
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2258
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2259
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    .line 2251
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2252
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2253
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    .line 2245
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2246
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2247
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    .line 2239
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v12

    .line 2240
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2241
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2235
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    .line 2236
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2232
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2230
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2228
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2226
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2224
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2222
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2220
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2216
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2217
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2214
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2211
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v4

    .line 2212
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2208
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2206
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2204
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2202
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2200
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2197
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v4

    .line 2198
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 2193
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v9

    .line 2194
    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v12, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 2477
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 2478
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 2479
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 556
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 563
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 568
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 569
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 572
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 573
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 3469
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzd(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1207
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zze(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 3464
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzf(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 3465
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzg(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 3466
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 3467
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzi(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 3468
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;
    .locals 2

    .line 2489
    check-cast p0, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 2490
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfa()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2491
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfb()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v0

    .line 2492
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    :cond_0
    return-object v0
.end method

.method private final zzp(II)I
    .locals 1

    .line 3525
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuf:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzug:I

    if-gt p1, v0, :cond_0

    .line 3526
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzq(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzq(II)I
    .locals 4

    .line 3528
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 3533
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 253
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 327
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 328
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 329
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 331
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 332
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 324
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 325
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 321
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 322
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 316
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 313
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 310
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 307
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 304
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 301
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 298
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 294
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 296
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 290
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 292
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 286
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 288
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 283
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 280
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 277
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 274
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 271
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 268
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 264
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 266
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 260
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 262
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 342
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p2

    .line 345
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzkb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 350
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v3

    .line 352
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 448
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 446
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 447
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    .line 444
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 445
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 442
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 443
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    .line 440
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 441
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 438
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 436
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 437
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 434
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 435
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 430
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 432
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 427
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 429
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 425
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 426
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzkm;->zze(Z)I

    move-result v3

    goto/16 :goto_2

    .line 423
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 424
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 421
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 422
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    .line 419
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 420
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 417
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 418
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    .line 415
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 416
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    .line 413
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 414
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 410
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 412
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 408
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 406
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 401
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 398
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 396
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 394
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 392
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 390
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 388
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 386
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 381
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 378
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 376
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzkm;->zze(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 374
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 372
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 370
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 368
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 366
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 364
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 361
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 362
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 452
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 453
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 454
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkb;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzup:Lcom/google/android/gms/internal/drive/zzly;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuh:Lcom/google/android/gms/internal/drive/zzlq;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/drive/zzly;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/drive/zziz;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 3011
    sget-object v10, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    const v17, 0xfffff

    if-ge v0, v13, :cond_1f

    add-int/lit8 v3, v0, 0x1

    .line 3018
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3020
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3021
    iget v3, v9, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 3025
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzp(II)I

    move-result v1

    goto :goto_2

    .line 3026
    :cond_1
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzau(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 v25, v3

    move v2, v4

    move v9, v5

    move-object/from16 v27, v10

    move v8, v11

    const/16 v19, 0x0

    goto/16 :goto_15

    .line 3030
    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v5

    and-int v5, v8, v17

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v20, v8

    if-gt v11, v5, :cond_10

    add-int/lit8 v5, v2, 0x2

    .line 3038
    aget v1, v1, v5

    ushr-int/lit8 v5, v1, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v5

    and-int v1, v1, v17

    const/4 v5, -0x1

    if-eq v1, v7, :cond_4

    if-eq v7, v5, :cond_3

    int-to-long v8, v7

    .line 3043
    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v6, v1

    .line 3045
    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v1

    :cond_4
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move/from16 v8, v19

    const/16 v19, -0x1

    :goto_3
    move v7, v4

    goto/16 :goto_10

    :pswitch_0
    const/4 v8, 0x3

    if-ne v0, v8, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    .line 3132
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move-object/from16 v1, p2

    move v9, v2

    move v2, v4

    move v11, v3

    move/from16 v3, p4

    move v4, v8

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v5, p6

    .line 3133
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_5

    move-object/from16 v5, p6

    .line 3135
    iget-object v1, v5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    .line 3137
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 3138
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3139
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v6, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v2, v9

    move v1, v11

    move/from16 v11, p5

    move-object v9, v5

    goto/16 :goto_0

    :cond_6
    move v9, v2

    move v11, v3

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_b

    :pswitch_1
    move-object/from16 v5, p6

    move v9, v2

    move v11, v3

    move/from16 v8, v19

    const/16 v19, -0x1

    if-nez v0, :cond_7

    move-wide v2, v12

    move-object/from16 v12, p2

    .line 3123
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v13

    .line 3124
    iget-wide v0, v5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    .line 3125
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v13

    move-object v13, v5

    move-wide/from16 v4, v17

    .line 3126
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto/16 :goto_e

    :cond_7
    move-object/from16 v12, p2

    move-object v13, v5

    goto/16 :goto_b

    :pswitch_2
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 3116
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3117
    iget v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 3118
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v1

    .line 3119
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 3107
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3108
    iget v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 3109
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 3110
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/drive/zzko;->zzan(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 3113
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;)V

    goto/16 :goto_e

    .line 3111
    :cond_9
    :goto_5
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_4
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 3102
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3103
    iget-object v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v6, v6, v22

    goto/16 :goto_e

    :pswitch_5
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_b

    .line 3091
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move/from16 v5, p4

    .line 3092
    invoke-static {v0, v12, v4, v5, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_a

    .line 3094
    iget-object v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 3096
    :cond_a
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 3097
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3098
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_b
    move/from16 v5, p4

    goto/16 :goto_b

    :pswitch_6
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_c

    .line 3084
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    goto :goto_7

    .line 3085
    :cond_c
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3086
    :goto_7
    iget-object v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_7
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 3078
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move/from16 p3, v0

    .line 3079
    iget-wide v0, v13, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 v20, 0x0

    cmp-long v4, v0, v20

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JZ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto :goto_a

    :pswitch_8
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 3073
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_9
    or-int v6, v6, v22

    :goto_a
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v5

    goto/16 :goto_0

    :pswitch_9
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 3068
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_c

    :cond_e
    :goto_b
    move/from16 p3, v7

    goto/16 :goto_3

    :pswitch_a
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_f

    .line 3063
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3064
    iget v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_b
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_f

    .line 3058
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v7

    .line 3059
    iget-wide v4, v13, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move v0, v7

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, p3

    goto :goto_f

    :pswitch_c
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_f

    .line 3053
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_d

    :pswitch_d
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_f

    .line 3048
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JD)V

    :goto_c
    add-int/lit8 v0, v7, 0x8

    :goto_d
    or-int v6, v6, v22

    move/from16 v7, p3

    :goto_e
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    :goto_f
    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_f
    :goto_10
    move v2, v7

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v25, v11

    move/from16 v7, p3

    move v9, v8

    move/from16 v8, p5

    goto/16 :goto_15

    :cond_10
    move v5, v3

    move/from16 v18, v7

    move/from16 v8, v19

    const/16 v19, -0x1

    move v7, v4

    move-wide/from16 v28, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v2

    move-wide/from16 v2, v28

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 3144
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkp;

    .line 3145
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3146
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_11

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 3149
    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    .line 3150
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v11, v0

    .line 3152
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v11

    move/from16 v22, v6

    move-object/from16 v6, p6

    .line 3153
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move/from16 v11, p5

    move v1, v7

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v7, v18

    move/from16 v6, v22

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    move/from16 v22, v6

    move/from16 v25, v5

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    goto/16 :goto_12

    :cond_14
    move/from16 v22, v6

    move v6, v5

    const/16 v1, 0x31

    if-gt v11, v1, :cond_16

    move/from16 v5, v20

    int-to-long v4, v5

    move v1, v0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v7

    move-wide/from16 v20, v4

    move/from16 v4, p4

    move v5, v8

    move/from16 v25, v6

    move v15, v7

    move/from16 v7, p3

    move/from16 v26, v8

    move v8, v9

    move/from16 v19, v9

    move-object/from16 v27, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 3158
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto/16 :goto_14

    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v22

    move/from16 v1, v25

    move/from16 v3, v26

    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_16
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v25, v6

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v5, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_18

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 3163
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto :goto_14

    :cond_17
    :goto_12
    move/from16 v8, p5

    move v2, v15

    :goto_13
    move/from16 v7, v18

    move/from16 v6, v22

    move/from16 v9, v26

    goto :goto_15

    :cond_18
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v26

    move/from16 v6, v25

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v19

    move-object/from16 v13, p6

    .line 3168
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_1e

    :goto_14
    move/from16 v8, p5

    move v2, v0

    goto :goto_13

    :goto_15
    if-ne v9, v8, :cond_1a

    if-nez v8, :cond_19

    goto :goto_16

    :cond_19
    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move v0, v7

    const/4 v1, -0x1

    move v7, v2

    goto/16 :goto_19

    :cond_1a
    :goto_16
    move-object/from16 v10, p0

    .line 3171
    iget-boolean v0, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_1d

    move-object/from16 v11, p6

    iget-object v0, v11, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    .line 3172
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->zzci()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 3173
    iget-object v0, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzuh:Lcom/google/android/gms/internal/drive/zzlq;

    .line 3175
    iget-object v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    move/from16 v12, v25

    .line 3176
    invoke-virtual {v1, v0, v12}, Lcom/google/android/gms/internal/drive/zzjx;->zza(Lcom/google/android/gms/internal/drive/zzlq;I)Lcom/google/android/gms/internal/drive/zzkk$zzd;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 3179
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3180
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move-object/from16 v14, p1

    move/from16 v13, p4

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move v1, v12

    move/from16 v2, v19

    move-object/from16 v10, v27

    move-object/from16 v12, p2

    goto :goto_18

    :cond_1b
    move-object/from16 v13, p1

    .line 3181
    move-object v0, v13

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzdg()Lcom/google/android/gms/internal/drive/zzkb;

    .line 3183
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 3184
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v13, p1

    goto :goto_17

    :cond_1d
    move-object/from16 v13, p1

    move-object/from16 v11, p6

    :goto_17
    move/from16 v12, v25

    .line 3187
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3188
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move v1, v12

    move-object v14, v13

    move/from16 v2, v19

    move-object/from16 v10, v27

    move-object/from16 v12, p2

    move/from16 v13, p4

    :goto_18
    move v11, v8

    goto/16 :goto_0

    :cond_1e
    move/from16 v12, v25

    move/from16 v9, v26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p4

    move/from16 v11, p5

    move v3, v9

    move v1, v12

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v22

    move-object/from16 v10, v27

    move-object/from16 v12, p2

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_1f
    move/from16 v22, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v8, v11

    move-object v13, v14

    move-object v10, v15

    move v7, v0

    move v9, v3

    move/from16 v0, v18

    const/4 v1, -0x1

    :goto_19
    if-eq v0, v1, :cond_20

    int-to-long v0, v0

    move-object/from16 v2, v27

    .line 3191
    invoke-virtual {v2, v13, v0, v1, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    const/4 v0, 0x0

    .line 3193
    iget v1, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    move-object v5, v0

    move v11, v1

    :goto_1a
    iget v0, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzuo:I

    if-ge v11, v0, :cond_23

    .line 3194
    iget-object v0, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v1, v0, v11

    iget-object v6, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    .line 3197
    iget-object v0, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v2, v0, v1

    .line 3199
    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v0

    and-int v0, v0, v17

    int-to-long v3, v0

    .line 3202
    invoke-static {v13, v3, v4}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_1b

    .line 3205
    :cond_21
    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_1b

    .line 3208
    :cond_22
    iget-object v3, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/drive/zzll;->zzh(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    .line 3210
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/drive/zzko;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmx;)Ljava/lang/Object;

    move-result-object v5

    .line 3211
    :goto_1b
    check-cast v5, Lcom/google/android/gms/internal/drive/zzmy;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    :cond_23
    if-eqz v5, :cond_24

    .line 3214
    iget-object v0, v10, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    .line 3215
    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/internal/drive/zzmx;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    if-nez v8, :cond_26

    move/from16 v0, p4

    if-ne v7, v0, :cond_25

    goto :goto_1c

    .line 3218
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v0

    throw v0

    :cond_26
    move/from16 v0, p4

    if-gt v7, v0, :cond_27

    if-ne v9, v8, :cond_27

    :goto_1c
    return v7

    .line 3220
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/drive/zzns;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1208
    invoke-interface {p2}, Lcom/google/android/gms/internal/drive/zzns;->zzcd()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsj:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 1210
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    .line 1213
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v0

    .line 1216
    iget-object v1, v0, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzmi;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1218
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 1220
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 1221
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v8

    .line 1223
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 1225
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 1226
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 1227
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 1669
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1672
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1673
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1674
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 1665
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1668
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_3

    .line 1661
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1664
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_3

    .line 1657
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1660
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_3

    .line 1653
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1656
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_3

    .line 1649
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1652
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_3

    .line 1645
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1648
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_3

    .line 1640
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1643
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1644
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_3

    .line 1634
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1637
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1638
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 1630
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1633
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_3

    .line 1626
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1629
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_3

    .line 1622
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1625
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto/16 :goto_3

    .line 1618
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1621
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto/16 :goto_3

    .line 1614
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1617
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto/16 :goto_3

    .line 1610
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1613
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto/16 :goto_3

    .line 1606
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1609
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto/16 :goto_3

    .line 1602
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1605
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto/16 :goto_3

    .line 1598
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1601
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1596
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1587
    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1590
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1591
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1592
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 1579
    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1582
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1583
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1571
    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1574
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1575
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1563
    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1566
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1567
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1555
    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1558
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1559
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1547
    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1550
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1551
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1539
    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1542
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1543
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1531
    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1534
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1535
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1523
    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1526
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1527
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1515
    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1518
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1519
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1507
    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1510
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1511
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1499
    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1502
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1503
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1491
    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1494
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1495
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1483
    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1486
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1487
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1475
    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1478
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1479
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1467
    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1470
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1471
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1459
    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1462
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1463
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1451
    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1454
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1455
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1443
    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1446
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1447
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1435
    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1438
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1439
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1427
    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1430
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1431
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1419
    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1422
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1423
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_3

    .line 1410
    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1413
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1414
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1415
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 1402
    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1405
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1406
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_3

    .line 1394
    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1397
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1398
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1386
    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1389
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1390
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1378
    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1381
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1382
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1370
    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1373
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1374
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1362
    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1365
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1366
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1354
    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1357
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1358
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1346
    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1349
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1350
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1338
    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1341
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1342
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_3

    .line 1330
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1333
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1334
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1335
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 1324
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1328
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1329
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_3

    .line 1318
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1322
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1323
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_3

    .line 1312
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1316
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1317
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_3

    .line 1306
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1310
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1311
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_3

    .line 1300
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1304
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1305
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_3

    .line 1294
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1298
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1299
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_3

    .line 1289
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1292
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1293
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_3

    .line 1283
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1286
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1287
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_3

    .line 1279
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1282
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_3

    .line 1273
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1277
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v8

    .line 1278
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_3

    .line 1267
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1271
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1272
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto :goto_3

    .line 1261
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1265
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1266
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto :goto_3

    .line 1255
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1259
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1260
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto :goto_3

    .line 1249
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1253
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1254
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto :goto_3

    .line 1243
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1247
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1248
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto :goto_3

    .line 1237
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1241
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v8

    .line 1242
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto :goto_3

    .line 1231
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1235
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1236
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 1677
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 1678
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    .line 1680
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_f

    .line 1684
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_8

    .line 1685
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v0

    .line 1687
    iget-object v1, v0, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzmi;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1689
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1690
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 1691
    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_c

    .line 1693
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v9

    .line 1695
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    :goto_7
    if-eqz v1, :cond_a

    .line 1697
    iget-object v11, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 1698
    iget-object v11, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 1699
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v1, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 2141
    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2144
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2145
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 2146
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8

    .line 2137
    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2140
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_8

    .line 2133
    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2136
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_8

    .line 2129
    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2132
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_8

    .line 2125
    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2128
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_8

    .line 2121
    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2124
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_8

    .line 2117
    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2120
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_8

    .line 2112
    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2115
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/drive/zzjc;

    .line 2116
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_8

    .line 2106
    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2109
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2110
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8

    .line 2102
    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2105
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_8

    .line 2098
    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2101
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_8

    .line 2094
    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2097
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto/16 :goto_8

    .line 2090
    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2093
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto/16 :goto_8

    .line 2086
    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2089
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto/16 :goto_8

    .line 2082
    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2085
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto/16 :goto_8

    .line 2078
    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2081
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto/16 :goto_8

    .line 2074
    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2077
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto/16 :goto_8

    .line 2070
    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2073
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2068
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2059
    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2062
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2063
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 2064
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8

    .line 2051
    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2054
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2055
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 2043
    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2046
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2047
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 2035
    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2038
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2039
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 2027
    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2030
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2031
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 2019
    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2022
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2023
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 2011
    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2014
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2015
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 2003
    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2006
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2007
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1995
    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1998
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1999
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1987
    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1990
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1991
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1979
    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1982
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1983
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1971
    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1974
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1975
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1963
    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1966
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1967
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1955
    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1958
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1959
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1947
    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1950
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1951
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1939
    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1942
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1943
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1931
    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1934
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1935
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1923
    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1926
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1927
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1915
    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1918
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1919
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1907
    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1910
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1911
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1899
    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1902
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1903
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1891
    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1894
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1895
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_8

    .line 1882
    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1885
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1886
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 1887
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8

    .line 1874
    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1877
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1878
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_8

    .line 1866
    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1869
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1870
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1858
    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1861
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1862
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1850
    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1853
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1854
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1842
    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1845
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1846
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1834
    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1837
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1838
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1826
    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1829
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1830
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1818
    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1821
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1822
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1810
    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1813
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1814
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8

    .line 1802
    :pswitch_78
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1805
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1806
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 1807
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8

    .line 1796
    :pswitch_79
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1800
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1801
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_8

    .line 1790
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1794
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1795
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_8

    .line 1784
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1788
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1789
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_8

    .line 1778
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1782
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1783
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_8

    .line 1772
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1776
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1777
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_8

    .line 1766
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1770
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1771
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_8

    .line 1761
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1764
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1765
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_8

    .line 1755
    :pswitch_80
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1758
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1759
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8

    .line 1751
    :pswitch_81
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1754
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_8

    .line 1745
    :pswitch_82
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1749
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v9

    .line 1750
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_8

    .line 1739
    :pswitch_83
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1743
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1744
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto :goto_8

    .line 1733
    :pswitch_84
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1737
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1738
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto :goto_8

    .line 1727
    :pswitch_85
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1731
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1732
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto :goto_8

    .line 1721
    :pswitch_86
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1725
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1726
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto :goto_8

    .line 1715
    :pswitch_87
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1719
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1720
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto :goto_8

    .line 1709
    :pswitch_88
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1713
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v9

    .line 1714
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto :goto_8

    .line 1703
    :pswitch_89
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1707
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1708
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    .line 2149
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 2150
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_9

    .line 2151
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void

    .line 2153
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/drive/zziz;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 3222
    iget-boolean v0, v15, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_12

    .line 3224
    sget-object v9, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 3228
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3230
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3231
    iget v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 3235
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzp(II)I

    move-result v0

    goto :goto_2

    .line 3236
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzau(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_e

    .line 3240
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-nez v6, :cond_a

    .line 3309
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 3310
    iget-wide v0, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    .line 3311
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 3312
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3303
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3304
    iget v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 3305
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v1

    .line 3306
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3299
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3300
    iget v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 3295
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3296
    iget-object v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 3285
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    .line 3286
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3287
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3289
    iget-object v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3290
    :cond_3
    iget-object v5, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 3291
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3292
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 3279
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    goto :goto_3

    .line 3280
    :cond_4
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3281
    :goto_3
    iget-object v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 3274
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 3275
    iget-wide v5, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 3270
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_f

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 3266
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3262
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3263
    iget v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 3258
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 3259
    iget-wide v4, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 3254
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 3250
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    goto/16 :goto_f

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_b

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 3317
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkp;

    .line 3318
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3319
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_9

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 3322
    :goto_9
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    .line 3323
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 3325
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3326
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_f

    :cond_a
    :goto_a
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_b
    const/16 v26, -0x1

    goto/16 :goto_c

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 3331
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_d

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-ne v7, v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 3336
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_d

    :cond_d
    :goto_c
    move v2, v15

    goto :goto_e

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 3341
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_d
    move v2, v0

    .line 3344
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 3345
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    :cond_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    :goto_f
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 3348
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3350
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 460
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 465
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 534
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 531
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 533
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 529
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 526
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 528
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 524
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Lcom/google/android/gms/internal/drive/zzll;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 522
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuq:Lcom/google/android/gms/internal/drive/zzla;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/drive/zzla;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 520
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 517
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 514
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 511
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 508
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 505
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 507
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 502
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 499
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 497
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 494
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 491
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JZ)V

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 488
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 485
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 487
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 482
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 479
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 476
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 478
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 473
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JF)V

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 470
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JD)V

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 536
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-nez v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Lcom/google/android/gms/internal/drive/zzjy;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 457
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3352
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuo:I

    if-ge v0, v1, :cond_1

    .line 3353
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3356
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3358
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/drive/zzll;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3360
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3362
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuq:Lcom/google/android/gms/internal/drive/zzla;

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/drive/zzla;->zza(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3364
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzd(Ljava/lang/Object;)V

    .line 3365
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_3

    .line 3366
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzd(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final zzn(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 575
    iget-boolean v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 576
    sget-object v2, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 578
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 579
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 584
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 589
    sget-object v14, Lcom/google/android/gms/internal/drive/zzke;->zzqh:Lcom/google/android/gms/internal/drive/zzke;

    .line 590
    invoke-virtual {v14}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/drive/zzke;->zzqu:Lcom/google/android/gms/internal/drive/zzke;

    .line 591
    invoke-virtual {v14}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 592
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_4

    .line 856
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 858
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzlq;

    .line 859
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 860
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3

    .line 854
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 855
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 852
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 853
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v3

    goto/16 :goto_3

    .line 850
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 851
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 848
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 849
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v3

    goto/16 :goto_3

    .line 846
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 847
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v3

    goto/16 :goto_3

    .line 844
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 845
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v3

    goto/16 :goto_3

    .line 840
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 842
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    .line 843
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto/16 :goto_3

    .line 836
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 837
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 838
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3

    .line 830
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 831
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 832
    instance-of v6, v5, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v6, :cond_1

    .line 833
    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto/16 :goto_3

    .line 834
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 828
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 829
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 826
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 827
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v3

    goto/16 :goto_3

    .line 824
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 825
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 822
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 823
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v3

    goto/16 :goto_3

    .line 820
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 821
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 818
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 819
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 816
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 817
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v3

    goto/16 :goto_3

    .line 814
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 815
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v3

    goto/16 :goto_3

    .line 810
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 811
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object v6

    .line 812
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzll;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 807
    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 808
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3

    .line 798
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 799
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 801
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 802
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 804
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 805
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 789
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 790
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 792
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 793
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 795
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 796
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 780
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 781
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 783
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 784
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 786
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 787
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 771
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 772
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 774
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 775
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 777
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 778
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 762
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 763
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 765
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 766
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 768
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 769
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 753
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 754
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 756
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 757
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 759
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 760
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 744
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 745
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 747
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 748
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 750
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 751
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 735
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 736
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 738
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 739
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 741
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 742
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 726
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 727
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 729
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 730
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 732
    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 733
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 717
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 718
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 720
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 721
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 723
    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 724
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_2

    .line 708
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 709
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 711
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 712
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 714
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 715
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto :goto_2

    .line 699
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 700
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 702
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 703
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 705
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 706
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto :goto_2

    .line 690
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 691
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 693
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 694
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 696
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 697
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto :goto_2

    .line 681
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 682
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 684
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 685
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 687
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 688
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    :goto_2
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    .line 678
    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 676
    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 674
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 672
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 670
    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 668
    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzt(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 666
    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 663
    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 664
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto :goto_3

    .line 660
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 658
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 656
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 654
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 652
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 650
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 648
    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzo(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 646
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 644
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_4

    .line 639
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 641
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzlq;

    .line 642
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 643
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto :goto_3

    .line 636
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 638
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v3

    goto :goto_3

    .line 634
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 635
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v3

    goto :goto_3

    .line 632
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 633
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v3

    goto :goto_3

    .line 630
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 631
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v3

    goto :goto_3

    .line 628
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 629
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v3

    goto :goto_3

    .line 626
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v3

    goto :goto_3

    .line 622
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 623
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    .line 624
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto :goto_3

    .line 618
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 619
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 620
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3

    .line 612
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 613
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 614
    instance-of v6, v5, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v6, :cond_10

    .line 615
    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto/16 :goto_3

    .line 616
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 610
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 611
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 608
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 609
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v3

    goto/16 :goto_3

    .line 606
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 607
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 604
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 605
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v3

    goto/16 :goto_3

    .line 601
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 599
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 600
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 597
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 598
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v3

    goto/16 :goto_3

    .line 595
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 596
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 862
    :cond_12
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 865
    :cond_13
    sget-object v2, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 868
    :goto_5
    iget-object v13, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v13, v13

    if-ge v5, v13, :cond_2b

    .line 869
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v13

    .line 871
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v15, v14, v5

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v5, 0x2

    .line 879
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v3, :cond_14

    int-to-long v8, v14

    .line 884
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v3, v14

    :cond_14
    move v8, v11

    goto :goto_7

    .line 885
    :cond_15
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/drive/zzke;->zzqh:Lcom/google/android/gms/internal/drive/zzke;

    .line 886
    invoke-virtual {v8}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v8

    if-lt v4, v8, :cond_16

    sget-object v8, Lcom/google/android/gms/internal/drive/zzke;->zzqu:Lcom/google/android/gms/internal/drive/zzke;

    .line 887
    invoke-virtual {v8}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v8

    if-gt v4, v8, :cond_16

    .line 888
    iget-object v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    and-int/2addr v8, v7

    goto :goto_6

    :cond_16
    const/4 v8, 0x0

    :goto_6
    const/16 v18, 0x0

    :goto_7
    and-int v9, v13, v7

    int-to-long v9, v9

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_b

    .line 1184
    :pswitch_45
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1186
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzlq;

    .line 1187
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 1188
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_a

    .line 1182
    :pswitch_46
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1183
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1180
    :pswitch_47
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1181
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v4

    goto/16 :goto_a

    .line 1178
    :pswitch_48
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 1179
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1176
    :pswitch_49
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1177
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v8

    goto/16 :goto_e

    .line 1174
    :pswitch_4a
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1175
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v4

    goto/16 :goto_a

    .line 1172
    :pswitch_4b
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1173
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v4

    goto/16 :goto_a

    .line 1168
    :pswitch_4c
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1170
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1171
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto/16 :goto_a

    .line 1164
    :pswitch_4d
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1165
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1166
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_a

    .line 1158
    :pswitch_4e
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1159
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1160
    instance-of v8, v4, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v8, :cond_17

    .line 1161
    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto/16 :goto_a

    .line 1162
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    .line 1156
    :pswitch_4f
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    .line 1157
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v8

    goto/16 :goto_e

    .line 1154
    :pswitch_50
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1155
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v8

    goto/16 :goto_e

    .line 1152
    :pswitch_51
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 1153
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1150
    :pswitch_52
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1151
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v4

    goto/16 :goto_a

    .line 1148
    :pswitch_53
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1149
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1146
    :pswitch_54
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1147
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 1144
    :pswitch_55
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1145
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v8

    goto/16 :goto_e

    .line 1142
    :pswitch_56
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 1143
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v4

    goto/16 :goto_a

    .line 1138
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 1139
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object v9

    .line 1140
    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzll;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_a

    .line 1134
    :pswitch_58
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1135
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 1136
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_a

    .line 1125
    :pswitch_59
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1126
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1128
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_18

    int-to-long v8, v8

    .line 1129
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1131
    :cond_18
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1132
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1116
    :pswitch_5a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1117
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1119
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_19

    int-to-long v8, v8

    .line 1120
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1122
    :cond_19
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1123
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1107
    :pswitch_5b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1108
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1110
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_1a

    int-to-long v8, v8

    .line 1111
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1113
    :cond_1a
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1114
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1098
    :pswitch_5c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1099
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1101
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_1b

    int-to-long v8, v8

    .line 1102
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1104
    :cond_1b
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1105
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1089
    :pswitch_5d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1090
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1092
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_1c

    int-to-long v8, v8

    .line 1093
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1095
    :cond_1c
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1096
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1080
    :pswitch_5e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1081
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1083
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_1d

    int-to-long v8, v8

    .line 1084
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1086
    :cond_1d
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1087
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1071
    :pswitch_5f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1072
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1074
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_1e

    int-to-long v8, v8

    .line 1075
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1077
    :cond_1e
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1078
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1062
    :pswitch_60
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1063
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1065
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_1f

    int-to-long v8, v8

    .line 1066
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1068
    :cond_1f
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1069
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1053
    :pswitch_61
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1054
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1056
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_20

    int-to-long v8, v8

    .line 1057
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1059
    :cond_20
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1060
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1044
    :pswitch_62
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1045
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1047
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_21

    int-to-long v8, v8

    .line 1048
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1050
    :cond_21
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1051
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_8

    .line 1035
    :pswitch_63
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1036
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1038
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_22

    int-to-long v8, v8

    .line 1039
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1041
    :cond_22
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1042
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto :goto_8

    .line 1026
    :pswitch_64
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1027
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1029
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_23

    int-to-long v8, v8

    .line 1030
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1032
    :cond_23
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1033
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto :goto_8

    .line 1017
    :pswitch_65
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1018
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1020
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_24

    int-to-long v8, v8

    .line 1021
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1023
    :cond_24
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1024
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto :goto_8

    .line 1008
    :pswitch_66
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1009
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1011
    iget-boolean v9, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v9, :cond_25

    int-to-long v8, v8

    .line 1012
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1014
    :cond_25
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1015
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    :goto_8
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_e

    .line 1004
    :pswitch_67
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    .line 1005
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_68
    const/4 v8, 0x0

    .line 1000
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1001
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_69
    const/4 v8, 0x0

    .line 996
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 997
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6a
    const/4 v8, 0x0

    .line 992
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 993
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6b
    const/4 v8, 0x0

    .line 988
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 989
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6c
    const/4 v8, 0x0

    .line 984
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 985
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzt(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    .line 980
    :pswitch_6d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 981
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_a

    .line 976
    :pswitch_6e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 977
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto :goto_a

    .line 973
    :pswitch_6f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;)I

    move-result v4

    goto :goto_a

    .line 969
    :pswitch_70
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    .line 970
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzx(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_71
    const/4 v8, 0x0

    .line 965
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 966
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_72
    const/4 v8, 0x0

    .line 961
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 962
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_73
    const/4 v8, 0x0

    .line 957
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 958
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_74
    const/4 v8, 0x0

    .line 953
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 954
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_75
    const/4 v8, 0x0

    .line 949
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 950
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_76
    const/4 v8, 0x0

    .line 945
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 946
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v4

    :goto_9
    add-int/2addr v6, v4

    const/4 v4, 0x1

    goto :goto_d

    :pswitch_77
    const/4 v8, 0x0

    .line 941
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 942
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v4

    :goto_a
    add-int/2addr v6, v4

    :cond_26
    :goto_b
    const/4 v4, 0x1

    :cond_27
    :goto_c
    const/4 v8, 0x0

    :goto_d
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_11

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 937
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzlq;

    .line 938
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 939
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto :goto_a

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 934
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 932
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v4

    goto :goto_a

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const-wide/16 v8, 0x0

    .line 930
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 928
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v8

    :goto_e
    add-int/2addr v6, v8

    goto :goto_b

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 926
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v4

    goto :goto_a

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 924
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v4

    goto :goto_a

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 920
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    .line 921
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto :goto_a

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 916
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 917
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 910
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 911
    instance-of v8, v4, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v8, :cond_28

    .line 912
    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto/16 :goto_a

    .line 913
    :cond_28
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    .line 908
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v8

    add-int/2addr v6, v8

    goto/16 :goto_c

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v18

    if-eqz v8, :cond_27

    const/4 v8, 0x0

    .line 906
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v9

    add-int/2addr v6, v9

    goto/16 :goto_d

    :pswitch_84
    const/4 v4, 0x1

    const/4 v8, 0x0

    and-int v9, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_29

    .line 904
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v9

    goto :goto_f

    :pswitch_85
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 902
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v9

    goto :goto_f

    :pswitch_86
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 900
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v9

    goto :goto_f

    :pswitch_87
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 898
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v9

    :goto_f
    add-int/2addr v6, v9

    :cond_29
    const/4 v9, 0x0

    goto :goto_10

    :pswitch_88
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_29

    const/4 v9, 0x0

    .line 896
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v10

    add-int/2addr v6, v10

    :cond_2a
    :goto_10
    const-wide/16 v10, 0x0

    goto :goto_11

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_2a

    const-wide/16 v10, 0x0

    .line 894
    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v15

    add-int/2addr v6, v15

    :goto_11
    add-int/lit8 v5, v5, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_2b
    const/4 v8, 0x0

    .line 1190
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    .line 1191
    iget-boolean v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v2, :cond_2e

    .line 1192
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v1

    const/4 v11, 0x0

    .line 1194
    :goto_12
    iget-object v2, v1, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/drive/zzmi;->zzer()I

    move-result v2

    if-ge v11, v2, :cond_2c

    .line 1195
    iget-object v2, v1, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/drive/zzmi;->zzaw(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 1196
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/drive/zzkd;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/drive/zzkb;->zzb(Lcom/google/android/gms/internal/drive/zzkd;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1198
    :cond_2c
    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzmi;->zzes()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1199
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/drive/zzkd;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/drive/zzkb;->zzb(Lcom/google/android/gms/internal/drive/zzkd;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_13

    :cond_2d
    add-int/2addr v6, v8

    :cond_2e
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzp(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3389
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_e

    .line 3390
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v4, v4, v2

    .line 3392
    iget-object v6, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v6, v6, v4

    .line 3394
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v7

    .line 3396
    iget-boolean v8, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 3397
    iget-object v8, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v1, :cond_1

    .line 3402
    sget-object v1, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v1, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v1, v10

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    .line 3406
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_c

    const/16 v11, 0x11

    if-eq v10, v11, :cond_c

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_9

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_8

    const/16 v8, 0x44

    if-eq v10, v8, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_4

    goto/16 :goto_5

    .line 3432
    :cond_4
    iget-object v6, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 3434
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/drive/zzll;->zzi(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 3435
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3436
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object v4

    .line 3437
    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object v4

    .line 3438
    iget-object v4, v4, Lcom/google/android/gms/internal/drive/zzlj;->zztw:Lcom/google/android/gms/internal/drive/zznm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/drive/zznm;->zzfj()Lcom/google/android/gms/internal/drive/zznr;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/drive/zznr;->zzxx:Lcom/google/android/gms/internal/drive/zznr;

    if-ne v4, v7, :cond_7

    const/4 v4, 0x0

    .line 3440
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_6

    .line 3442
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    .line 3443
    :cond_6
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/drive/zzmf;->zzp(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v5, 0x0

    :cond_7
    if-nez v5, :cond_d

    return v0

    .line 3428
    :cond_8
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3429
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzmf;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_9
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 3417
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3418
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 3419
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    const/4 v7, 0x0

    .line 3420
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 3421
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3422
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/drive/zzmf;->zzp(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-nez v5, :cond_d

    return v0

    .line 3411
    :cond_c
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3412
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzmf;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3450
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v1, :cond_f

    .line 3451
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkb;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_f

    return v0

    :cond_f
    return v5
.end method
