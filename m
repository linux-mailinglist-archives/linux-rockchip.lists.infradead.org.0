Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B30A161B65
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 20:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iIMrA/JAb1v4znsOIR9PcWmLjSRtxwzHzTn4r5MO81w=; b=EmK
	/GM/syUSRXFAS1on/Qn8RvNiXiwHLoEcbE9XcBXsUVkv325RytpQm+Wd5Aimd9ZrAGGMVTyeRjzJY
	2tfyFEPxv3g00tAi9MucPrvvXoZOhmQhmQe4WNcBYkpmvPX+gZpW0h66RL334DVHSboWrxZ+2VkEZ
	zTrghQxtbOYyOYNDTBTx3+FpIhn2H81cJYfAYUJ3dH5l4BVz/QPMZGgQh0XFQPEMK/1CNOfnypLkt
	2CqQ+AD7sXhPKMX43lED+OSR4HZlOdc8uazHkAt2iM5PxMWG7U0/+Q7GYM1/fO3NFA/ZciW89MRti
	3BuOxozvX51ZtMR0cpwfOzpplrKOWnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lsi-0002fJ-BS; Mon, 17 Feb 2020 19:16:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3lsf-0002eT-O9
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 19:16:35 +0000
Received: from localhost.localdomain
 (p200300CB87166A0024B68010760D030E.dip0.t-ipconnect.de
 [IPv6:2003:cb:8716:6a00:24b6:8010:760d:30e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 925A128188B;
 Mon, 17 Feb 2020 19:16:31 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/2] fix fwnode API usage and remove v4l2_mbus_config field
Date: Mon, 17 Feb 2020 20:16:17 +0100
Message-Id: <20200217191619.28976-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_111633_913446_577C378A 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patchset fixes usage of the APIs.
This fixes the item in the TODO file:

* Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.

Patches summary:

- The first patch removes the field v4l2_mbus_config from
'struct rkisp1_sensor_async'.

- The second patch removes the usage of
v4l2_async_notifier_parse_fwnode_endpoints_by_port.
The code is very similar to the code in the function cio2_parse_firmware
but instead of iterating the ports it iterates the id's.
The patch also removes the relevant item from the TODO file.

Dafna Hirschfeld (2):
  media: staging: rkisp1: remove mbus field from rkisp1_sensor_async
  media: staging: rkisp1: replace the call to
    v4l2_async_notifier_parse_fwnode_endpoints_by_port

 drivers/staging/media/rkisp1/TODO            |   3 -
 drivers/staging/media/rkisp1/rkisp1-common.h |   3 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c    | 108 ++++++++++---------
 drivers/staging/media/rkisp1/rkisp1-isp.c    |  52 +++------
 4 files changed, 76 insertions(+), 90 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
