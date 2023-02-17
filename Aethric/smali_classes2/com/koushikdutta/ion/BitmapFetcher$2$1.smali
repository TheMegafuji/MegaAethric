.class Lcom/koushikdutta/ion/BitmapFetcher$2$1;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapFetcher$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/BitmapFetcher$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapFetcher$2;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapFetcher$2$1;->this$1:Lcom/koushikdutta/ion/BitmapFetcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher$2$1;->this$1:Lcom/koushikdutta/ion/BitmapFetcher$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/BitmapFetcher$2;->val$ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher$2$1;->this$1:Lcom/koushikdutta/ion/BitmapFetcher$2;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapFetcher$2;->this$0:Lcom/koushikdutta/ion/BitmapFetcher;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->remove(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void
.end method
