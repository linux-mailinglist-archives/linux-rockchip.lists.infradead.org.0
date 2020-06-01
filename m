Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23A71EA2D0
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 13:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:Subject:
	Message-ID:From:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fj19B+2X7CDAA3P+7SXp7K9S0dYd2KYdI4HKL4JltMw=; b=g8259mZL2TXUwM
	cilL8SH5/WKbQFm4LqaQinn87N0wqcZbJFScpHWhN7WGbwiSkXe+caCktnaBQLANQrEpaI+8dYcS5
	cPHpIMrL+nbPs1SzxuZptk3WNcOEAuqSfe/ncs9rFJAw7c0I0HQGzxi9cYqulac7IBLloQg2U9qLo
	bcaIAoKlxpgMyaHMZCT3ojTBJKcwX2sL6brLT9LMZ0MvvGwg6ODehv4/TRVvHs465zaN7fsT6z9tV
	GoiWdzqBC1ftcx2mLNDTZlDqE1oA6AI6MM9mpO3+062Scene3ZwP7bqA76PCJq3DUZNnj7dTU9yWg
	pku9Yj7LcTR5+MRh8sAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfikc-0006GA-Fv; Mon, 01 Jun 2020 11:37:06 +0000
Received: from piie.net ([80.82.223.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfikP-000661-P0; Mon, 01 Jun 2020 11:36:55 +0000
Received: from mail.piie.net (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
 (Client did not present a certificate)
 by piie.net (Postfix) with ESMTPSA id BC5F9163C;
 Mon,  1 Jun 2020 13:36:48 +0200 (CEST)
Mime-Version: 1.0
Date: Mon, 01 Jun 2020 11:36:48 +0000
X-Mailer: RainLoop/1.11.3
From: "=?utf-8?B?UGV0ZXIgS8Okc3RsZQ==?=" <peter@piie.net>
Message-ID: <679efad9fe803c019d1049fc042e6477@piie.net>
Subject: Re: [PATCH v4 04/11] thermal: Store device mode in struct
 thermal_zone_device
To: "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20200528192051.28034-5-andrzej.p@collabora.com>
References: <20200528192051.28034-5-andrzej.p@collabora.com> <Message-ID:
 <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_043654_099565_A1A068F5 
X-CRM114-Status: UNSURE (   2.64  )
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

28. Mai 2020 21:21, "Andrzej Pietrasiewicz" <andrzej.p@collabora.com> schrieb:

> Prepare for eliminating get_mode().
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---

[...]

> drivers/platform/x86/acerhdf.c | 15 ++++++-------

Acked-by: Peter Kaestle <peter@piie.net>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
