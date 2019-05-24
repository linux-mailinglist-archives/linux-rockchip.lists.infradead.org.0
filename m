Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AE129E05
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 May 2019 20:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hOTn9Jr7dByp2igpk5mifHW+MfLrFpZkux5LuRuXp0=; b=OIzTbuCETVyagw
	WO0tbskI9kaCkxkA0MxUd+qpAhLmsG68Qc59h+qgN8gkN/NfNLr81HggX5wAEwrrLjH/TtoJ37h+d
	TUXlnNVyWFtHFMdifXOVTTwColzHe9a1RqRvfNmdbIyPTmVyoJmEb1uhkDrBlch9I8uo2GYBoqwP7
	FMAsWrOagBwbKaAW178VtTOFxUfzGENlf6aw8inEgnL5ZkXot8Sk3NvmCxFgammB6diT+bELhRIK1
	Iq7vU38LGCOzMksjVNHpU3imibX8QLQN9KH6SJqmwQ2+hdTrGssyqOyOXsRRZG2aGJjFm5wjS3ed/
	8on6YIO4ht3HdrTHA40A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEvV-0007vv-2j; Fri, 24 May 2019 18:28:21 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEvR-0007vY-9g
 for linux-rockchip@lists.infradead.org; Fri, 24 May 2019 18:28:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id f22so8487297iol.11
 for <linux-rockchip@lists.infradead.org>; Fri, 24 May 2019 11:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BDESGXT0j1RqfD8UC5wEVR9NOAgNl+31Qzy92/1CrNI=;
 b=mYp8dGwtKopCkxjZcnlrir3hYrtnh6GDx8B/i9zNZTMy0LaomLty5GsAc6gLJeA4ed
 HHRmuENBXUxe8kJqFuvhXbW2QBRwX8/74pUjIXcRRpErRnouCsz1/TvPIjB3ZyYy3eSD
 z5KeqAO+cv6JKVL6PSGh7BfnYpzOjL+OLAt3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BDESGXT0j1RqfD8UC5wEVR9NOAgNl+31Qzy92/1CrNI=;
 b=XLkeXvYYBuw2/NN/LgTN0XbzaPeUsO84DDC2U/PbPJvoeeTpmMF6h9GAwQHw37oZgw
 n3ETKPrLM0vEvzSWJHAM+Lqanpdr0IaDzMURpXo2U8eZ+INRCALsR9BOoY97M7hSFQPJ
 /Y5pURQtyVxmLvE+04SrbGRyGH1vUMcNvg9qwgD7m/m1G5Mo8ib7AuL/2xn/Bir6FBlY
 soJZUBXOorVmZwQMqETgRWSF1Hs74d7j1JvMf+k+/DDVX1rVvr/LnFJNSkicknNZZ33j
 6zAxMuJXDCnB970CsGUYDcA6EbVB+m6DzRswHut3YRt6G3euKK03BKA2GYpj/0U3eCHF
 zBNw==
X-Gm-Message-State: APjAAAVH/3WzlCOD8MmSSx1KBgzsgEKD7P7h9DJP/RKdkBHgUfLhwfFl
 jzCrx3o7+JSGM/RrebmgVW8Y8DSIqw+/eQh7JjrLaw==
X-Google-Smtp-Source: APXvYqz1QT0ESUYXS/u44VXDuCZFSeoI5162dVq1H8zH/H1lbLyW+okicuonzS/fL+zUAudvBUmWc+BzcK6iz/bD34A=
X-Received: by 2002:a5d:9f46:: with SMTP id u6mr46599585iot.297.1558722496216; 
 Fri, 24 May 2019 11:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190517102941.29145-1-jagan@amarulasolutions.com>
 <20190517102941.29145-3-jagan@amarulasolutions.com>
In-Reply-To: <20190517102941.29145-3-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 24 May 2019 23:58:05 +0530
Message-ID: <CAMty3ZBmwk-j3c4ST30CthhY4cvEfdeNA-0gbg3zfSeieNPP7g@mail.gmail.com>
Subject: Re: [PATCH v8 3/3] rockchip: rk3399: Add Rock PI 4 support
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, 
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_112817_824671_CFB47767 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Akash Gajjar <akash@openedev.com>, U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 4:00 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Add initial support for Rock PI 4 board.
>
> Specification
> - Rockchip RK3399
> - LPDDR4
> - eMMC
> - SD card slot
> - RTL8211E 1Gbps
> - HDMI In/Out, DP, MIPI DSI/CSI
> - PCIe M.2
> - USB 2.0, USB-3.0
> - USB C Type
>
> Commit details of rk3399-rock-pi-4.dts sync from Linux 5.1-rc2:
> "arm64: dts: rockchip: add ROCK Pi 4 DTS support"
> (sha1: 1b5715c602fda7b812af0e190eddcce2812e5417)
>
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v8:
> - Add TPL support
> - Now the bootchain is
>   rkbin (TPL) -> SPL -> U-Boot proper

Seems like Kever is busy or off (I ping him privately) and these
patches are supposed to merge during RC's. I'm planning merge in
tomorrow or day after, let me know if any concerns?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
