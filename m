Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF4460717
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 16:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLETAWHXWE2n0Io+aVfSGWppZbWEtL212CCEVIOGr/I=; b=ZKnvUE+DMISQVz
	3+ttkwm5v/H00C/CnDm0FKpGnJeXpCTONTxLxmsXOI7UFsYPfcqsTycN54pdHaX83d4M0DacRHGru
	HWuKVaVqkACzf/G24a0o/EU33gQ23fw20vz9eByGpYcaj0oEx5uXJwGcFOEnaC6WtTnBv6EXAwO8+
	zwT6/TP+DczUwoEox8Ev40bhTv2yODh3jKeNbETyhdIocbsOFyt5LLxFceh7IqX3d+Q6SiKNuVEYp
	X0P9P7GSQvh+Wh7j+btSe3GtOEgGCzBJ23qF27PAXihRyLv/TEHKEOVnWMtHEECASUujIpCujv+5B
	LfpunJaAh7UX1bQXBUvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOme-0005tV-SP; Fri, 05 Jul 2019 14:01:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfd-0004up-MZ
 for linux-rockchip@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0IIqKWzRaNse3XXjc9VJC174hdKsP3di+1IIb5DajLs=; b=hdKoIjCn7qb+1s7/NdHN5BHEM
 DCnOR8qFJweud23dBr8BWOcnLfof7DXundBfkktWvyM/wOLM8dkMH8LbLGv15vOXC1C68k1gq0Wr3
 OTRmAjYc8+uqOoEDMzO41Gtx/PThODnMnp5aoboX5d8Gxm6LYZAqFvvtmU4ZpGFq5hV4ArpSzr9Ig
 YgwTvmoPA+K8ROFV/bOINOP+Ak6cJH4fh8wvnEGtSbB7y1Ukz3Owg5ZGyAjDYVPix5jlEqaXH6ohz
 1MTVQ0PbWXWDj0z4hdOU+n5MDuCYN8fL+Wx88F5j7bKn8PqTY6wkRRHY1jktB+7ThhsBO9N9rm1Is
 iXjDL0x9g==;
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIMy-0002jG-Qn
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 07:10:58 +0000
Received: by mail-ot1-x343.google.com with SMTP id s20so8123617otp.4
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2019 00:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0IIqKWzRaNse3XXjc9VJC174hdKsP3di+1IIb5DajLs=;
 b=gh/Toz6V7CixdKGLGkGy9rPXkrdYpbSEI9toJWHRYaf4kHmQ/0QfMBxGBHsJtDl9i9
 ZwjZg2XdbTSBvk5L41Rc7GwtWbT43JorS2dYawqFZq0UF8xiHjUn30KcpEdiKuzYv91k
 2BB6vbDpC26WiSr5OAiV+1AjkluoSR+vFoFQMvBNdGLTUnZXsqoqP7zX8GOOFaR7IoFU
 P+hfc0NAZuTMJOgudDmWkfHCqRRGjxoW92AgSBMRCJlCTYcgBMm4iLSXUKDrvBhMNGUj
 kOa6/YuH0gC2IBEeHA1yriXC0QfOWUIpElqf+l3HO/EvIv3/ubknXhnXBQU+SJadHsUV
 kP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0IIqKWzRaNse3XXjc9VJC174hdKsP3di+1IIb5DajLs=;
 b=mv/bEdFoaU4jlePyL0ZPcuHbkULhPiIhs8ZaMIUrW0X69BzIdw/0B1UTaEP8FjgV5T
 FxBb8adpUWT/1dHfXWHezPdJdRGbsROjaQ59bF8XaMiCKuYQf4B/Kbg/zpg36RsuR8CH
 VxpKzz9KFBd1hkJjPAaH2LNlobzim8wqLflH24g0tuLVyTloKh8QxqZHuPTiaevUY7pk
 KqZfL27F477lGPyPYfrurGlV5YVwm+PBwQkYbqjVNoCUbbjAXjs5FaXuRtIHNKa3lr0Y
 AH9GxBPSWdRnFUVaXQus2dMxKbh4CI1qXsX+u1Eg2oE47y1z6dU0falhq4Lvi3HqxSLa
 LoVw==
X-Gm-Message-State: APjAAAWQUkowg8xmzo5r+rduW28jdMV6qcxctHbinitPV1Jsq5p9v2np
 byu/OHrygUrm0eDFgl6qAkyrOBvEcd2gyIogfUkMcg==
X-Google-Smtp-Source: APXvYqzldGMEKIRPPEJ0vaUfI2lFQ29kQgI2QwiHDaDqpSbGSw2Xx3CIMBQjB6qsF1gXZ8S1OcSQCm9TeiE6wueHYB4=
X-Received: by 2002:a9d:4f02:: with SMTP id d2mr1738812otl.328.1562310528818; 
 Fri, 05 Jul 2019 00:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
In-Reply-To: <20190705042623.129541-2-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 5 Jul 2019 15:08:37 +0800
Message-ID: <CA+Px+wXtmf9dQQP7ywPLp7Qbbvqau=WnO3qhZ8+qmbJD1gjx+A@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081056_899000_801FFCD5 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-15.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: ALSA development <alsa-devel@alsa-project.org>, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
> index 7fea496f1f34..26c02abb8eba 100644
> --- a/include/sound/hdmi-codec.h
> +++ b/include/sound/hdmi-codec.h
> @@ -47,6 +47,9 @@ struct hdmi_codec_params {
>         int channels;
>  };
>
> +typedef void (*hdmi_codec_plugged_cb)(struct platform_device *dev,
> +                                     bool plugged);
> +
The callback prototype is "weird" by struct platform_device.  Is it
possible to having snd_soc_component instead of platform_device?

>  struct hdmi_codec_pdata;
>  struct hdmi_codec_ops {
>         /*
> @@ -88,6 +91,13 @@ struct hdmi_codec_ops {
>          */
>         int (*get_dai_id)(struct snd_soc_component *comment,
>                           struct device_node *endpoint);
> +
> +       /*
> +        * Hook callback function to handle connector plug event.
> +        * Optional
> +        */
> +       int (*hook_plugged_cb)(struct device *dev, void *data,
> +                              hdmi_codec_plugged_cb fn);
>  };
The first parameter dev could be removed.  Not used.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
