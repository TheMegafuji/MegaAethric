.class public final Lcom/google/android/gms/games/internal/player/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field public final zzA:Ljava/lang/String;

.field public final zzB:Ljava/lang/String;

.field public final zzC:Ljava/lang/String;

.field public final zzD:Ljava/lang/String;

.field public final zzE:Ljava/lang/String;

.field public final zzF:Ljava/lang/String;

.field public final zzG:Ljava/lang/String;

.field public final zzH:Ljava/lang/String;

.field public final zzI:Ljava/lang/String;

.field public final zzJ:Ljava/lang/String;

.field public final zzK:Ljava/lang/String;

.field public final zzL:Ljava/lang/String;

.field public final zzM:Ljava/lang/String;

.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;

.field public final zzi:Ljava/lang/String;

.field public final zzj:Ljava/lang/String;

.field public final zzk:Ljava/lang/String;

.field public final zzl:Ljava/lang/String;

.field public final zzm:Ljava/lang/String;

.field public final zzn:Ljava/lang/String;

.field public final zzo:Ljava/lang/String;

.field public final zzp:Ljava/lang/String;

.field public final zzq:Ljava/lang/String;

.field public final zzr:Ljava/lang/String;

.field public final zzs:Ljava/lang/String;

.field public final zzt:Ljava/lang/String;

.field public final zzu:Ljava/lang/String;

.field public final zzv:Ljava/lang/String;

.field public final zzw:Ljava/lang/String;

.field public final zzx:Ljava/lang/String;

.field public final zzy:Ljava/lang/String;

.field public final zzz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "external_player_id"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zza:Ljava/lang/String;

    const-string p1, "game_player_id"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzb:Ljava/lang/String;

    const-string p1, "profile_name"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzc:Ljava/lang/String;

    const-string p1, "profile_icon_image_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzd:Ljava/lang/String;

    const-string p1, "profile_icon_image_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zze:Ljava/lang/String;

    const-string p1, "profile_hi_res_image_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzf:Ljava/lang/String;

    const-string p1, "profile_hi_res_image_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Ljava/lang/String;

    const-string p1, "last_updated"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzh:Ljava/lang/String;

    const-string p1, "is_in_circles"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzi:Ljava/lang/String;

    const-string p1, "played_with_timestamp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzj:Ljava/lang/String;

    const-string p1, "current_xp_total"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzk:Ljava/lang/String;

    const-string p1, "current_level"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzl:Ljava/lang/String;

    const-string p1, "current_level_min_xp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzm:Ljava/lang/String;

    const-string p1, "current_level_max_xp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzn:Ljava/lang/String;

    const-string p1, "next_level"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzo:Ljava/lang/String;

    const-string p1, "next_level_max_xp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzp:Ljava/lang/String;

    const-string p1, "last_level_up_timestamp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzq:Ljava/lang/String;

    const-string p1, "player_title"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzr:Ljava/lang/String;

    const-string p1, "is_profile_visible"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzs:Ljava/lang/String;

    const-string p1, "most_recent_external_game_id"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzt:Ljava/lang/String;

    const-string p1, "most_recent_game_name"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzu:Ljava/lang/String;

    const-string p1, "most_recent_activity_timestamp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzv:Ljava/lang/String;

    const-string p1, "most_recent_game_icon_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzw:Ljava/lang/String;

    const-string p1, "most_recent_game_hi_res_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzx:Ljava/lang/String;

    const-string p1, "most_recent_game_featured_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzy:Ljava/lang/String;

    const-string p1, "has_debug_access"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzz:Ljava/lang/String;

    const-string p1, "gamer_tag"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzA:Ljava/lang/String;

    const-string p1, "real_name"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzB:Ljava/lang/String;

    const-string p1, "banner_image_landscape_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzC:Ljava/lang/String;

    const-string p1, "banner_image_landscape_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzD:Ljava/lang/String;

    const-string p1, "banner_image_portrait_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzE:Ljava/lang/String;

    const-string p1, "banner_image_portrait_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzF:Ljava/lang/String;

    const-string p1, "total_unlocked_achievements"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzG:Ljava/lang/String;

    const-string p1, "play_together_friend_status"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzH:Ljava/lang/String;

    const-string p1, "play_together_nickname"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzI:Ljava/lang/String;

    const-string p1, "play_together_invitation_nickname"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzJ:Ljava/lang/String;

    const-string p1, "nickname_abuse_report_token"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzK:Ljava/lang/String;

    const-string p1, "friends_list_visibility"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzL:Ljava/lang/String;

    const-string p1, "always_auto_sign_in"

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzM:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "nullexternal_player_id"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zza:Ljava/lang/String;

    const-string p1, "nullgame_player_id"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzb:Ljava/lang/String;

    const-string p1, "nullprofile_name"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzc:Ljava/lang/String;

    const-string p1, "nullprofile_icon_image_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzd:Ljava/lang/String;

    const-string p1, "nullprofile_icon_image_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zze:Ljava/lang/String;

    const-string p1, "nullprofile_hi_res_image_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzf:Ljava/lang/String;

    const-string p1, "nullprofile_hi_res_image_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Ljava/lang/String;

    const-string p1, "nulllast_updated"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzh:Ljava/lang/String;

    const-string p1, "nullis_in_circles"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzi:Ljava/lang/String;

    const-string p1, "nullplayed_with_timestamp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzj:Ljava/lang/String;

    const-string p1, "nullcurrent_xp_total"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzk:Ljava/lang/String;

    const-string p1, "nullcurrent_level"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzl:Ljava/lang/String;

    const-string p1, "nullcurrent_level_min_xp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzm:Ljava/lang/String;

    const-string p1, "nullcurrent_level_max_xp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzn:Ljava/lang/String;

    const-string p1, "nullnext_level"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzo:Ljava/lang/String;

    const-string p1, "nullnext_level_max_xp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzp:Ljava/lang/String;

    const-string p1, "nulllast_level_up_timestamp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzq:Ljava/lang/String;

    const-string p1, "nullplayer_title"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzr:Ljava/lang/String;

    const-string p1, "nullis_profile_visible"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzs:Ljava/lang/String;

    const-string p1, "nullmost_recent_external_game_id"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzt:Ljava/lang/String;

    const-string p1, "nullmost_recent_game_name"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzu:Ljava/lang/String;

    const-string p1, "nullmost_recent_activity_timestamp"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzv:Ljava/lang/String;

    const-string p1, "nullmost_recent_game_icon_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzw:Ljava/lang/String;

    const-string p1, "nullmost_recent_game_hi_res_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzx:Ljava/lang/String;

    const-string p1, "nullmost_recent_game_featured_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzy:Ljava/lang/String;

    const-string p1, "nullhas_debug_access"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzz:Ljava/lang/String;

    const-string p1, "nullgamer_tag"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzA:Ljava/lang/String;

    const-string p1, "nullreal_name"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzB:Ljava/lang/String;

    const-string p1, "nullbanner_image_landscape_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzC:Ljava/lang/String;

    const-string p1, "nullbanner_image_landscape_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzD:Ljava/lang/String;

    const-string p1, "nullbanner_image_portrait_uri"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzE:Ljava/lang/String;

    const-string p1, "nullbanner_image_portrait_url"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzF:Ljava/lang/String;

    const-string p1, "nulltotal_unlocked_achievements"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzG:Ljava/lang/String;

    const-string p1, "nullplay_together_friend_status"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzH:Ljava/lang/String;

    const-string p1, "nullplay_together_nickname"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzI:Ljava/lang/String;

    const-string p1, "nullplay_together_invitation_nickname"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzJ:Ljava/lang/String;

    const-string p1, "nullnickname_abuse_report_token"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzK:Ljava/lang/String;

    const-string p1, "nullfriends_list_visibility"

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzL:Ljava/lang/String;

    const-string p1, "nullalways_auto_sign_in"

    goto/16 :goto_0
.end method
