.class Lcom/koushikdutta/ion/BitmapFetcher$2;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapFetcher;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/BitmapFetcher;

.field final synthetic val$ion:Lcom/koushikdutta/ion/Ion;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/Ion;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapFetcher$2;->this$0:Lcom/koushikdutta/ion/BitmapFetcher;

    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapFetcher$2;->val$ion:Lcom/koushikdutta/ion/Ion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/ion/BitmapFetcher$2$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/BitmapFetcher$2$1;-><init>(Lcom/koushikdutta/ion/BitmapFetcher$2;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
