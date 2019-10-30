Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211EBE98E5
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 10:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfnoVGQWY86olYb89w4imsn7YMfNTuoHqtam6xEW6Go=; b=E31SU4tbKp8atC
	1gHP4y05G/QFg1RSbjYnyAOB4NWyEGZmZhHzNxjuzOQ2QzIMuXInFS6FMh1xq60jH6gjGrz10cUJi
	T6DFR/1J9zTboq/XRblTPHCkm/N1dHlEUN+L1odYXdNIb3/KvqHP3cShw3CO722mcjXnXBZK7KDyH
	S5wGYEYpOQSTe5PQGfNJ9XbMrUeOiljXzvFon+qpH+F0Kfe4ccqF9KdgLi2n0iOuNwBQuXwRjBJrd
	bXjOhv6zzbqj/xGRPMSbIavWhMBiDyHL/Cd/5L+eeJmUtELNJ5vQSd8+9iI9FWnxi/v824bGfblNi
	HU9K2a7x/MDfGkqzMz5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjzU-0000WU-Ly; Wed, 30 Oct 2019 09:10:08 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjzP-0008KK-9G
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 09:10:05 +0000
Received: by mail-io1-xd44.google.com with SMTP id u8so1660683iom.5
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2019 02:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3BXeivFO4X0coYk6B/avMJFt+nMNImCe8Y2eVzRxJFc=;
 b=rgD3YR7uT2D0dkZuQMZgyLiH4b7hPEZWk818ADfeJHzIIEODqIjPi2Vwf4LkxgAJmn
 GugrOnHZ98V0Z5fmecKHMcS4hhuDDgAuQ45STgVaPP8PMGfNK8RQBIkyqnJcuPIbjHpl
 7yMmKCa2oWZjT98EoCyr6Qd1oE0fmu+QDael6BlSgXecboYQs5C6kbhzYZOH1MoZf652
 CMiu/cM0XoYvWCxUEw/QTl/q0/a/x3fI2q5xfQL6mBfYtpOxKH9AXmxUYDTxVIH74NwP
 P7u0BMgZXlVHQDYXTqHqKWo2W12R4VEUMqhCBlZcEmk7Wlxy94ZwfULaTy0x03tOe9Qr
 KxZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3BXeivFO4X0coYk6B/avMJFt+nMNImCe8Y2eVzRxJFc=;
 b=eGk8UAok8M6GnfWGInZDy2nstuMejClmfhvcWu2Q7p9ovJKAJwWR5+Iecdf9VwdPSq
 TyLDJIQp9CEYatZj3dxnks8jt5UHcGYxNBAi6z26j7IOg6TDj0blEq3hok2zspVe3G5y
 esfgX6KsYiIK6yOu7RXJL3dRCPvQ+BEYmwi2KjijPeX0g4POjsgvtTJzMBsIX+g3cpQ1
 Meg3hDD/FrsRrzaRy7SCDiBp3DE/ZhE0Xf0QK/nHCGILi5MFTx/hR9BcBn1Bn4MPT8pc
 20RF/JAgPplcouJeuYd+tg7sDw9Q1JtBaYY5Q/veTJtOWu6xUkRosI4lsJsnVEcajIvP
 ECCw==
X-Gm-Message-State: APjAAAVfGo7W5GSxFJv6ceowcRfcaHYm15mmL1xze8Wu43dhkbS9nFz9
 GnLvqWTDX6cUDCWHDvTi9YmmXqogsaWknX+w/HbsmA==
X-Google-Smtp-Source: APXvYqwsMJgbtEnWJYSgXn3eGjvbOusJ0jj+WPFGATdoFjsdJMwxpkNReWQUMncR1sWsj4rp80BoxS+tjeE5DjoKEvw=
X-Received: by 2002:a02:900a:: with SMTP id w10mr16212181jaf.29.1572426598410; 
 Wed, 30 Oct 2019 02:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191028071930.145899-1-cychiang@chromium.org>
 <20191028071930.145899-6-cychiang@chromium.org>
In-Reply-To: <20191028071930.145899-6-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 30 Oct 2019 17:09:46 +0800
Message-ID: <CA+Px+wXAo5EPjudneS+aFEAfBRAQR1Xp6goutdMdYTPeKcfTTA@mail.gmail.com>
Subject: Re: [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to
 rk3288-veyron-analog-audio
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_021003_350407_71FBB4ED 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 ALSA development <alsa-devel@alsa-project.org>,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 devicetree@vger.kernel.org, Tzung-Bi Shih <tzungbi@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Douglas Anderson <dianders@chromium.org>, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Mark,

This series has 6 patches.  We noticed you have merged the first 4
patches (includes the DT binding one:
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157668.html).

There are 2 DTS patches are still on the list:
- [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to
rk3288-veyron-analog-audio
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157499.html
- [PATCH v9 6/6] ARM: dts: rockchip: Add HDMI audio support to
rk3288-veyron-mickey.dts
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157500.html

Are you waiting for other maintainers' acknowledgement?  Or do we need
to resend them with maybe some modifications?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
