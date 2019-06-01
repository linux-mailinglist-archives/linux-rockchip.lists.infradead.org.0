Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7C731C27
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 15:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MQsOhM/MHI1sn/K17nYkatKBHnr4Csif0sTYctNkUy8=; b=i4DACsc/KpzdQP
	9I+H4S3aabI0ZTckY7JQC9mzqh8DIi6qvlUCaHm1cBYlbJgNkIW2KiqaddD7XvhljozyR1rRRHA1u
	mhF7/9wwCsV0WGqzhqQME2HjWM3PuVViCVf1VJukxZyjX0YVPtmt3HnqA4p59+no8OcfSYm37yB99
	5InEC6fs4Z1FVYbrHCzJjHQDexEuY+3eZSRTirz/nzvhEV98wHBmK9OyL9N6LeFZst06ijnEg4XH1
	Haafo1LYReP18RoRjPoMBio9u4O1Seqg4DzW6cY6+OXlXfKGla8I57eRt+OWYP7qJ4cHbIF4/enE5
	AI3i1tWO9OiEeOTNSkaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX3v9-00025m-9e; Sat, 01 Jun 2019 13:19:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX3v7-00025S-23
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 13:19:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE4A4272BE;
 Sat,  1 Jun 2019 13:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559395176;
 bh=0BH7zsVElE5DDidWWhc24VgxlmlbeytlvrOF5RZBkgI=;
 h=From:To:Cc:Subject:Date:From;
 b=DnuLTbkFfqGn9ia3ApPI4iiDFb+8wx9EuSLf9veL3lVWa0QV0j9T6O6SogD1ivUwV
 Fn9/4XpeFSO1cow30isMmcxRSSEr/1m+8APJjDM1ekazo/Y3IkKI/ppl90tuwjCOrI
 IxOOvDTp0mqM+dXILwCTGrJqz0eg6Ui1CKR3hCcQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 001/173] media: rockchip/vpu: Fix/re-order
 probe-error/remove path
Date: Sat,  1 Jun 2019 09:16:33 -0400
Message-Id: <20190601131934.25053-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_061937_118189_92189D7A 
X-CRM114-Status: UNSURE (   9.25  )
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

[ Upstream commit fc8670d1f72b746ff3a5fe441f1fca4c4dba0e6f ]

media_device_cleanup() and v4l2_m2m_unregister_media_controller() were
missing in the probe error path.
While at it, re-order calls in the remove path to unregister/cleanup
things in the reverse order they were initialized/registered.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 962412c79b917..33b556b3f0df8 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -481,10 +481,12 @@ static int rockchip_vpu_probe(struct platform_device *pdev)
 	return 0;
 err_video_dev_unreg:
 	if (vpu->vfd_enc) {
+		v4l2_m2m_unregister_media_controller(vpu->m2m_dev);
 		video_unregister_device(vpu->vfd_enc);
 		video_device_release(vpu->vfd_enc);
 	}
 err_m2m_rel:
+	media_device_cleanup(&vpu->mdev);
 	v4l2_m2m_release(vpu->m2m_dev);
 err_v4l2_unreg:
 	v4l2_device_unregister(&vpu->v4l2_dev);
@@ -501,13 +503,13 @@ static int rockchip_vpu_remove(struct platform_device *pdev)
 	v4l2_info(&vpu->v4l2_dev, "Removing %s\n", pdev->name);
 
 	media_device_unregister(&vpu->mdev);
-	v4l2_m2m_unregister_media_controller(vpu->m2m_dev);
-	v4l2_m2m_release(vpu->m2m_dev);
-	media_device_cleanup(&vpu->mdev);
 	if (vpu->vfd_enc) {
+		v4l2_m2m_unregister_media_controller(vpu->m2m_dev);
 		video_unregister_device(vpu->vfd_enc);
 		video_device_release(vpu->vfd_enc);
 	}
+	media_device_cleanup(&vpu->mdev);
+	v4l2_m2m_release(vpu->m2m_dev);
 	v4l2_device_unregister(&vpu->v4l2_dev);
 	clk_bulk_unprepare(vpu->variant->num_clocks, vpu->clocks);
 	pm_runtime_disable(vpu->dev);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
