.class Lcom/koushikdutta/async/util/FileCache$2;
.super Ljava/lang/Thread;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/util/FileCache;->doLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/util/FileCache;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$2;->this$0:Lcom/koushikdutta/async/util/FileCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$2;->this$0:Lcom/koushikdutta/async/util/FileCache;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache;->load()V

    return-void
.end method
