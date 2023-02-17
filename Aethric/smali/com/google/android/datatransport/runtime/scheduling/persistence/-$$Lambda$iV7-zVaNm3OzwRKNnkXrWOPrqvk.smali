.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$iV7-zVaNm3OzwRKNnkXrWOPrqvk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$iV7-zVaNm3OzwRKNnkXrWOPrqvk;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    return-void
.end method


# virtual methods
.method public final produce()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$iV7-zVaNm3OzwRKNnkXrWOPrqvk;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
