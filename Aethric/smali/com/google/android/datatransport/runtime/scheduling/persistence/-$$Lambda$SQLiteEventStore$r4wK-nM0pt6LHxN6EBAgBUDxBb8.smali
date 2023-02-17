.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$r4wK-nM0pt6LHxN6EBAgBUDxBb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;


# instance fields
.field public final synthetic f$0:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$r4wK-nM0pt6LHxN6EBAgBUDxBb8;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final produce()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$r4wK-nM0pt6LHxN6EBAgBUDxBb8;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$ensureBeginTransaction$24(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
