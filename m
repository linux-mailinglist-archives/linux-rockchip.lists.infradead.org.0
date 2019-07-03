Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD765ED15
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 22:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyDzH/YZdYKon/zLyi36X9xu4gxzakgr9PUaGlIIltc=; b=DKoU8tx/UZ/bk3
	aznsHMcmc2N0LATs48x1HEwccmkhHrIxgrgmuFm9rM1vWaDJ5uN3w+Ws7P31hkWmx9FvIOYVrvD2h
	BEr5dLe4DMtF71bn8hkcSHX5QY6n0r3O7RMoR9R1joopvPppxzmkzvEWRTiuIq57oC6+M7OsP2Tub
	BjH78Ognt7D49K1tCu4KekBSW1QZOBFyII//B4tgEiQ3BRVm7zDuK/FmMw/hPhvbDKx0j5dStIiei
	2EdAHCeh9TW1LQ4/a6TY4fRYaw+gS9Qisg8My7BoCvx/hDJBBGxw08Hd7XNd6GdzkteIZM6lScqbD
	zLBv2pbQTQX7zRLp+XBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hilQQ-0001bN-NR; Wed, 03 Jul 2019 20:00:18 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hilQM-0000pR-U6; Wed, 03 Jul 2019 20:00:16 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hilQ1-0007N7-UG; Wed, 03 Jul 2019 21:59:54 +0200
Date: Wed, 3 Jul 2019 21:59:52 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v7 04/14] media: rkisp1: add Rockchip MIPI Synopsys DPHY
 driver
In-Reply-To: <20190703190910.32633-5-helen.koike@collabora.com>
Message-ID: <alpine.DEB.2.21.1907032153410.1802@nanos.tec.linutronix.de>
References: <20190703190910.32633-1-helen.koike@collabora.com>
 <20190703190910.32633-5-helen.koike@collabora.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_130015_121050_F1F2C5C2 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, Kishon Vijay Abraham I <kishon@ti.com>,
 jacob2.chen@rock-chips.com, Zheng Yang <zhengyang@rock-chips.com>,
 jeffy.chen@rock-chips.com, zyc@rock-chips.com, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Helen,

On Wed, 3 Jul 2019, Helen Koike wrote:

> @@ -0,0 +1,412 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Rockchip MIPI Synopsys DPHY driver
> + *
> + * Based on:
> + *
> + * Copyright (C) 2016 FuZhou Rockchip Co., Ltd.
> + * Author: Yakir Yang <ykk@@rock-chips.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License.

So the SPDX-Identifiers says: GPL-2.0+ and here someone copied a broken
boiler plate text which could be interpreted as GPLv2 only because the 'or
at your option any later version' part was removed.

Can you please remove that boiler plate language? It's redundant
information. The SPDX license identifier is unambiguous, machine readable
and legally binding license information.

Thanks,

	tglx

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
