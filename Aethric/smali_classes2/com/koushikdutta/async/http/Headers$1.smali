.class Lcom/koushikdutta/async/http/Headers$1;
.super Lcom/koushikdutta/async/http/Multimap;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/Headers;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/Headers;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/Headers$1;->this$0:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected newList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/koushikdutta/async/util/TaggedList;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/TaggedList;-><init>()V

    return-object v0
.end method
