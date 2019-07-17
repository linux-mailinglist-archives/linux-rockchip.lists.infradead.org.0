Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174B46BA22
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jul 2019 12:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4/mV21s8lxxWAUWSjIdYBiljE/0deOHR5hCW/bDB8A=; b=ezMRlpX5i+Ss3J
	3LAWTwc7nzPPSEXlBEyy6giyvo1i+8bGR6+WqQNxXIiHkQls490wKr/8FfkchmxQH5AlrJLth0uRe
	C9wySUzlSdht5eQAozi9wxJJUV08NAO+LmXcpEjHw6qrN8LrxrYiGHjI4o6Ox2pZKk6ghQsh7BXLL
	2lecZ3fk1aL+9lvvYc11v1/w6UVlMlB3VkCuZ266AH2YNSt2x/T2bCk9dEWCuXWIGZVtLI6qyX9T1
	8pemUF9e7uDlaCnokZmA45vdK2sDiw3Jwoe+pFinuejqVqnObJA7QJ9GT1yrDCWenMzjKh2grA3MH
	uhexBgdmHyoKY6N4Xs8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhAq-0000jy-TH; Wed, 17 Jul 2019 10:28:36 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhAm-0000hy-TC
 for linux-rockchip@lists.infradead.org; Wed, 17 Jul 2019 10:28:34 +0000
Received: by mail-oi1-x241.google.com with SMTP id a127so18083294oii.2
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Jul 2019 03:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3OqUE647HuitrzeN56x9jTuLb2Ydo4APiMUt/N1U1gk=;
 b=JDhYZ/XLSp5p+uzs8xtZ+lDFSxyDX6a3a83vp7yY0oH7QR/JUG3nl7G/bfr2BVUVVt
 AT9BWdwzjWgFGhHaPLqfM2IfAKu5tUziTQa2yq6iXjC1JXAIXDIL1bnk3A60xCcqM8v1
 iHXfabVCBA+o6US93D2wHx2oKFBhG9ostlX0XsIagP4+oak+j0c4An6AaDbPkN0LuELE
 sbSIgxgH+PAC7n3MJ4/wXWHhsuSGKXPdLnObSXx350+qAr5xmhsnP0WJC6CsTXqWdSD+
 HwOrD5rSZE1vq3fGbC6Ihq5Zkdwq7tmp9dJjt8JIhcj2TFk/S5P93TXmZQmTmaWwZ/NV
 JatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3OqUE647HuitrzeN56x9jTuLb2Ydo4APiMUt/N1U1gk=;
 b=XgRTkessFGie1ldywzUnW+/Y+bvEdsn3yRCgPP8G8aM8W7dCCKGBXYJzjY75tXDkrq
 ZvCZc+XNISJjmxk3ETdUtR80dIxxBocIrPUJnRIGmRD9Dg8UVTKzl3BnHDmMDZnxetn5
 hUrUOu5bmtyZb1m6K2lo+HRB4mWLCeitXveI87OgVhrZIBUEu5Dc3rr46jy4OghqkuSW
 bD1u2dMOdlHcywshesWbafizaLlWkLjyAFneTJD2FAYyg1q0XArXJicr7Yxi0ePVnKTn
 g1M3oJucUU33w/Cwj93GzZTOeSgcB6/mfIlR0liM3Q22/35oc6gQvBG+/UbRB5uui++R
 Zibw==
X-Gm-Message-State: APjAAAWhv/uWUGgM5Ee5H7z6RmRnTYpIsNFutZrTw88JxvqhP7eVNccK
 vVHQ9yUh6nQ51ja0sed/kJYZVdBA3NS2uqL5O0p1QQ==
X-Google-Smtp-Source: APXvYqwWwXVZ/BZHTjaG86aX6+cX+YF7cjf0miBCE15x0Nd7s4TeCOAZk+HlSzO1mf3x+jEgUAq8Br9lxzMLzaRz5tc=
X-Received: by 2002:aca:544b:: with SMTP id i72mr20169753oib.174.1563359308762; 
 Wed, 17 Jul 2019 03:28:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190717083327.47646-1-cychiang@chromium.org>
In-Reply-To: <20190717083327.47646-1-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 17 Jul 2019 18:28:17 +0800
Message-ID: <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032832_971849_F3893039 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 4:33 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> This patch series supports HDMI jack reporting on RK3288, which uses
> DRM dw-hdmi driver and hdmi-codec codec driver.
>
> The previous discussion about reporting jack status using hdmi-notifier
> and drm_audio_component is at
>
> https://lore.kernel.org/patchwork/patch/1083027/
>
> The new approach is to use a callback mechanism that is
> specific to hdmi-codec.
>
> Changes from v4 to v5:
> - synopsys/Kconfig: Remove the incorrect dependency change in v4.
> - rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
>   for jack support.
>
> Cheng-Yi Chiang (5):
>   ASoC: hdmi-codec: Add an op to set callback function for plug event
>   drm: bridge: dw-hdmi: Report connector status using callback
>   drm: dw-hdmi-i2s: Use fixed id for codec device
>   ASoC: rockchip_max98090: Add dai_link for HDMI
>   ASoC: rockchip_max98090: Add HDMI jack support
>
LGTM.

Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
