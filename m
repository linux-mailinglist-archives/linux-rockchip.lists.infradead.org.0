Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761A0E7E97
	for <lists+linux-rockchip@lfdr.de>; Tue, 29 Oct 2019 03:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ldzwk9WANPpB6PiD93kvgrj1UEH8X6MuooE9SVeO6f0=; b=Ieo8qkHELDtTCT
	yPjKM8vx+N0Nlx2Oqftt75/WDlQmgPaC4NsHBwODDB+t7oaAIPXFBFqEcjf4o6wQEG03+LNS4nX90
	kajikRIqc2iCdRU5EucNT718wCWSwpCYepkIFuIavOdEuyaDMF0Y0QFm8aMptiTl17kMewRMBWrHQ
	5aT0amH7TMWltZvNAbSlMnYdpMn83wnPNRyysTxa2ya9UCHvvWCs4TLQkbQITFpHjNIbtR6MzMpUk
	lmn9eSKeoWQbznoJSnD7t/oB1yHLwITk84XW+3c78xfBSf9weqiuQFpF1E20FrrCgL09gbFLu8SCn
	uWK5bqI/4OOr29MQLgrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPHRr-0003Vf-SA; Tue, 29 Oct 2019 02:41:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPHRp-0003UI-2L
 for linux-rockchip@lists.infradead.org; Tue, 29 Oct 2019 02:41:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id t16so11964551wrr.1
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 19:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZeDXYfJYer9ewRjx0PKDp7gkl9UyDafoP/CtcLx8QMs=;
 b=VLQKO+JOvP8uz/jmVZM9OjdCfHDXyDMWpkMpTUHQHfjmA84+CUWD7XxXQNaduG/DhK
 WpLIlhGmDUXteBLSWlDLv3lLQKGl9plS/P7jNHsE1n2OgqkcjY1MB0T3Q0WBTvNA1F40
 PLq6JygSU3JQITuvsF6azO0JElsbcTQp8BtSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZeDXYfJYer9ewRjx0PKDp7gkl9UyDafoP/CtcLx8QMs=;
 b=efhIcBcezNNsh1c8y7B+YZk6/pF1zNaH0gq/mfwTQqVC8wT4cbJmyxgT6vRWYLYloV
 SWiSrcWihTkhQXZXW/5W++LA158mbp7ct6byrQ4DNnWE6bu38zVsY5aiuIu+sKCHHzQF
 kJ0ETjHsMS+mzqhhiJenvUEOFSKWD7ysxZNpd79ZNF9/IPjpxi7gxLKKS5guOH2Juvgg
 wM/WonDMbQoPXtUfmR8zoy5eKJ2tySMdRGqQEPmE0BCMb3NrOKbC3/x1z2CBMCbvcAmQ
 Z+SBa8rp2/6z4b0IPHC9nHbjCOx6Yu+RToO3nR1wE8qkAcC6calM5L+rqfORg6A0xi/2
 BT7Q==
X-Gm-Message-State: APjAAAV0442c3XoVTWt0/Zxq6774p9tBZeaZFSWTDvAWGo8fQfvP8wTC
 rUeXhfETH8drbNqV6sCkkbMBHtr8aAL41IOxKHohHg==
X-Google-Smtp-Source: APXvYqyc+JXXHY09WmrhUa6gx/7O5d2iKpnoJiK3FXpiuNcBFCoy0/gMtIdx+mtcV6BqjcvdZ3c6ru0/7R8MCJ1fJrA=
X-Received: by 2002:adf:e806:: with SMTP id o6mr15942278wrm.139.1572316882248; 
 Mon, 28 Oct 2019 19:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191025133007.11190-4-cychiang@chromium.org>
 <201910290345.w2EEW5S3%lkp@intel.com>
In-Reply-To: <201910290345.w2EEW5S3%lkp@intel.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 29 Oct 2019 10:40:55 +0800
Message-ID: <CAFv8NwJYrpT=hCFwWfbdRvC971X-XGS-mjEBJrggQTJ02nhv7g@mail.gmail.com>
Subject: Re: [PATCH v8 3/6] ASoC: rockchip_max98090: Optionally support HDMI
 use case
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_194129_111728_AD025B6D 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 devicetree@vger.kernel.org, Tzung-Bi Shih <tzungbi@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, kbuild-all@lists.01.org,
 Doug Anderson <dianders@chromium.org>, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 3:10 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Cheng-Yi,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on rockchip/for-next]
> [also build test ERROR on v5.4-rc5 next-20191028]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Cheng-Yi-Chiang/Add-HDMI-jack-support-on-RK3288/20191028-212502
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
> config: i386-allmodconfig (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=i386
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    sound/soc/rockchip/snd-soc-rockchip-max98090: struct of_device_id is 196 bytes.  The last of 3 is:
>    0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x72 0x6f 0x63 0x6b 0x63 0x68 0x69 0x70 0x2c 0x72 0x6f 0x63 0x6b 0x63 0x68 0x69 0x70 0x2d 0x61 0x75 0x64 0x69 0x6f 0x2d 0x6d 0x61 0x78 0x39 0x38 0x30 0x39 0x30 0x2d 0x68 0x64 0x6d 0x69 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x10 0x00 0x00 0x00
> >> FATAL: sound/soc/rockchip/snd-soc-rockchip-max98090: struct of_device_id is not terminated with a NULL entry!

Please ignore this error for v8 patch series because the change in
rockchip_max98090.c of of_device_id is removed in v9 patch series.
Thanks!

>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
