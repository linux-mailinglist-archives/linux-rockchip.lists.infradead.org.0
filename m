Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679E119488B
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 21:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=INaJ3HbQPHw9M44z5z7l3JzTBz4Uh9d6Swbg4KygMGU=; b=h6P7dbaBKmyMZQ
	xrnmwK7g50PnccIlem7pegKZpFbGdGENrIZJ6mLREhRPGot8NKlvNBGvLIbkYx9TJsZkPK35J/VYz
	vjG8JhZhxKyoWRUiwLuAk0kqVuVu0HmyJrTdNI+YKPRhZcN68AWSlbmHXPrt/ZTjnrnsJ3YTbnQSe
	FBmUlNs7nDiZqRj4TgWB0s4WXD7P7sE8xbyMIyhPLXhipewW0wHMawkUCcleAwtdR1z/htYH7J1iX
	uVyHUf7LiRBW5DjrnB3JNpDqnlpXlXsLClBUvVL9GEs+yUYAnaYnhJtX+K60xMCFuy92nTeEtyq4M
	aVUs5qq9WHYyNE/R/GEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHYvZ-0005NV-Sx; Thu, 26 Mar 2020 20:16:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHYvW-0005Ms-6O
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 20:16:31 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:113f:ad1c:b024:988e:8796:31a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 83A0C283C93;
 Thu, 26 Mar 2020 20:16:23 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 0/4] media: staging: rkisp1: cap: various fixes for capture
 formats
Date: Thu, 26 Mar 2020 21:16:06 +0100
Message-Id: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_131630_367694_78CC096F 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patchset fixes various issues related to
the supported formats in the rkisp1 capture.

Patches summary:

patch 1 - fixes a wrong assignments to the register that swaps the
'u', 'v' planes in YUV semiplanar formats.

patch 2 - sets the register from patch 1 only if the format is semiplanar.

patch 3 - adds support to planar YUV formats with swapped u,v planes
by swapping the addresses of the planes

patch 4 - removes some packed YUV formats that are not supported
by the driver.

Dafna Hirschfeld (4):
  media: staging: rkisp1: cap: fix issues when writing to uv swap
    register
  media: staging: rkisp1: cap: support uv swap only for semiplanar
    formats
  media: staging: rkisp1: cap: support uv swapped plane formats
  media: staging: rkisp1: cap: remove unsupported formats

 drivers/staging/media/rkisp1/rkisp1-capture.c | 55 ++++++++++---------
 1 file changed, 28 insertions(+), 27 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
