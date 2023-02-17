.class Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;
.super Ljava/lang/Object;
.source "IonBitmapRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->asBitmap()Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

.field final synthetic val$bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

.field final synthetic val$ret:Lcom/koushikdutta/ion/BitmapInfoToBitmap;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonBitmapRequestBuilder;Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/BitmapInfoToBitmap;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;->val$bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    iput-object p3, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;->val$ret:Lcom/koushikdutta/ion/BitmapInfoToBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;->val$bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/BitmapFetcher;->execute()V

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;->val$bitmapFetcher:Lcom/koushikdutta/ion/BitmapFetcher;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$2;->val$ret:Lcom/koushikdutta/ion/BitmapInfoToBitmap;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/util/HashList;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
