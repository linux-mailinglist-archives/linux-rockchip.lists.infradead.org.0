Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BED31EA2E5
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 13:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:Subject:
	Message-ID:From:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zU9gVBbF2dh0y44lBMy4ZMz41E6g56v9451iiQZ5ro=; b=cabuyUWOGdMdq0
	IGuxZNvD6/8kKjnQ1ZOl76bKy61nlXMEjhOKCIrCZjaPEQBG+b3VvtM9K6IaBSxgDcknFBm2iMQEJ
	AH1YJ1b1vSw3HoutYD5b9PwKkQ74nhcK/lr4BJYxmkb10C5ULRdccwsBdDVe6MREYkJNfBwDavL/2
	D8NGRxhMLYkJ3OozfjhkVrRlj1L5mbIM6/me2ng3/KwHUhgbXmJAu2Jedl0WlERzlQAELchJXo6Kj
	7ANWnOwzxjx42IvvV0Ada6iX4l17Pb0v4o8oBlZ5tiQc2iEOa49uls3Q/yvftH43G2S7tbieNU8ZM
	6qZYIh7juqSALBGbYuLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfile-0007S5-P9; Mon, 01 Jun 2020 11:38:10 +0000
Received: from piie.net ([80.82.223.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfilR-0007Gp-4a; Mon, 01 Jun 2020 11:37:58 +0000
Received: from mail.piie.net (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
 (Client did not present a certificate)
 by piie.net (Postfix) with ESMTPSA id 2577E260F;
 Mon,  1 Jun 2020 13:37:52 +0200 (CEST)
Mime-Version: 1.0
Date: Mon, 01 Jun 2020 11:37:52 +0000
X-Mailer: RainLoop/1.11.3
From: "=?utf-8?B?UGV0ZXIgS8Okc3RsZQ==?=" <peter@piie.net>
Message-ID: <05b890834efb5714a67a91afeabcd95d@piie.net>
Subject: Re: [PATCH v4 07/11] thermal: Use mode helpers in drivers
To: "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20200528192051.28034-8-andrzej.p@collabora.com>
References: <20200528192051.28034-8-andrzej.p@collabora.com> <Message-ID:
 <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_043757_467441_467CBACE 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, NXP Linux
 Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>, Zhang
 Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido
 Schimmel <idosch@mellanox.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Kalle Valo <kvalo@codeaurora.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Enrico Weigelt <info@metux.net>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Sebastian Reichel <sre@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?utf-8?B?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund@ragnatech.se>,
 Shawn Guo <shawnguo@kernel.org>, "David S .
 Miller" <davem@davemloft.net>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

28. Mai 2020 21:22, "Andrzej Pietrasiewicz" <andrzej.p@collabora.com> schrieb:

> Use thermal_zone_device_{en|dis}able() and thermal_zone_device_is_enabled().
> 
> Consequently, all set_mode() implementations in drivers:
> 
> - can stop modifying tzd's "mode" member,
> - shall stop taking tzd's lock, as it is taken in the helpers
> - shall stop calling thermal_zone_device_update() as it is called in the
> helpers
> - can assume they are called when the mode truly changes, so checks to
> verify that can be dropped
> 
> Not providing set_mode() by a driver no longer prevents the core from
> being able to set tzd's mode, so the relevant check in mode_store() is
> removed.
> 
> Other comments:
> 
> - acpi/thermal.c: tz->thermal_zone->mode will be updated only after we
> return from set_mode(), so use function parameter in thermal_set_mode()
> instead, no need to call acpi_thermal_check() in set_mode()
> - thermal/imx_thermal.c: regmap writes and mode assignment are done in
> thermal_zone_device_{en|dis}able() and set_mode() callback
> - thermal/intel/intel_quark_dts_thermal.c: soc_dts_{en|dis}able() are a
> part of set_mode() callback, so they don't need to modify tzd->mode, and
> don't need to fall back to the opposite mode if unsuccessful, as the return
> value will be propagated to thermal_zone_device_{en|dis}able() and
> ultimately tzd's member will not be changed in thermal_zone_device_set_mode().
> - thermal/of-thermal.c: no need to set zone->mode to DISABLED in
> of_parse_thermal_zones() as a tzd is kzalloc'ed so mode is DISABLED anyway
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---

[...]

> drivers/platform/x86/acerhdf.c | 17 +++++----

Acked-by: Peter Kaestle <peter@piie.net>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
