Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B223231C2A
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 15:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvUY4MeuW9mFBJz3368QiBb0h4O8M2ihV38AE5R+e8g=; b=WVuMSMqqQTLNKd
	W82smBNQFIf9h3zNWCu3bmhx2F+wmpEn4yBSxIku0dtI98vvVT6citTOeVk3eoBZ4gR6/MCipStKE
	L9qzHkdtN+5NCn8oh5RonhiNGDNzstp4Uk8VLuPS4bJYW7ukVdKObdAn5AxScpmq4Lr3zCUWg31w+
	QSx7BhwrgVUiNtLUk+CbDnutJe9UdGL0YLxi9l0KL/dGS+awl7VCD95UfOxIkgfUn2SALggyMGFu7
	Un2bk1c+sdkSVhHvyURqQUxSuQggeetDwmfHvB7/f6dwhetw9zkQET9UQelvXE9RbmyM59srs65wy
	jXNInwlLkJiaXWrSE69Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX3vJ-00028y-NS; Sat, 01 Jun 2019 13:19:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX3vG-00028a-Ts
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 13:19:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EF082725F;
 Sat,  1 Jun 2019 13:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559395186;
 bh=NHp4Zus6V4JDtlhyZgmwXxF/CbFxoMXzr6qTYcrfCPI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VuiUhad7NAChNF9UZcoCgwfFn9BF/KQ8m6F3TGnJ5ul9mPMLLGFw7rd0UqzSll1ER
 6+yk36QjCl/ZGDeXH2kKjAGpP0JjGO5Qzfqsy4id4n+r3f1iQllGL0xtbagcvFpT/g
 4DiI0wNSwIYhjGtMvxfYX+M+ZfPGXEx7aStUYXnU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 002/173] media: rockchip/vpu: Add missing
 dont_use_autosuspend() calls
Date: Sat,  1 Jun 2019 09:16:34 -0400
Message-Id: <20190601131934.25053-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190601131934.25053-1-sashal@kernel.org>
References: <20190601131934.25053-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_061946_978098_36F72E8E 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Jonas Karlman <jonas@kwiboo.se>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jonas Karlman <jonas@kwiboo.se>

[ Upstream commit 5c5b90f5cbad77dc15d8b5582efdb2e362bcd710 ]

Those calls are needed to restore a clean PM state when the probe fails
or when the driver is unloaded such that future ->probe() calls can
initialize runtime PM again.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 33b556b3f0df8..d489b5dd54d7a 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -492,6 +492,7 @@ static int rockchip_vpu_probe(struct platform_device *pdev)
 	v4l2_device_unregister(&vpu->v4l2_dev);
 err_clk_unprepare:
 	clk_bulk_unprepare(vpu->variant->num_clocks, vpu->clocks);
+	pm_runtime_dont_use_autosuspend(vpu->dev);
 	pm_runtime_disable(vpu->dev);
 	return ret;
 }
@@ -512,6 +513,7 @@ static int rockchip_vpu_remove(struct platform_device *pdev)
 	v4l2_m2m_release(vpu->m2m_dev);
 	v4l2_device_unregister(&vpu->v4l2_dev);
 	clk_bulk_unprepare(vpu->variant->num_clocks, vpu->clocks);
+	pm_runtime_dont_use_autosuspend(vpu->dev);
 	pm_runtime_disable(vpu->dev);
 	return 0;
 }
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
