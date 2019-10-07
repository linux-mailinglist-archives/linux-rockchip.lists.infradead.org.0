Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48639CEADD
	for <lists+linux-rockchip@lfdr.de>; Mon,  7 Oct 2019 19:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hczWfIFuflbPeUjEhtNhSghJX5huI5ToQldNtlssJuQ=; b=un/QySvTcf1hrL
	CUS98FPS0SHFslIFObIKbxJZu47+eCucyhzHIm/HMQisYo8KAXz3cEw8qU0d7mAGqoemMOQA0ZrN1
	GOI+uSRFK4xVrQi/FLrYY4adQeBxOZE75RZBFER81rXR2JpwrKvbHHlconCvHj/d9dkW35uO3d30N
	QnWd5/Rond2LwMAY+AclMWdqY2W/8x1fO1Kl3i8Lex6Gtz4ArS2JLJeaN/VWcrgl9vIPIErAGiST0
	0rdXS7aunPyqD7x9X2xGG+AL7wKlQ+gikcbSOfqWt9N6qa5vGc6uZZU/WK1c66XM3h58qEyb4DVlT
	MMVzldcwdiw75UNkhJGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHX5Q-0003L2-1N; Mon, 07 Oct 2019 17:46:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHX5N-0003K9-0h
 for linux-rockchip@lists.infradead.org; Mon, 07 Oct 2019 17:46:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A31F428D406
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 for 5.4 0/4] media: hantro: Collected fixes for v5.4
Date: Mon,  7 Oct 2019 14:45:01 -0300
Message-Id: <20191007174505.10681-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_104617_186370_FF12EDBF 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Douglas Anderson <dianders@chromium.org>, fbuergisser@chromium.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Some pending fixes. The first patch is needed to allow
dynamic resolution changes, as per the upcoming stateless
decoder API. This patch was posted before and received
some comments from Philipp Zabel.

The second patch was posted by Jonas Karlman as part
of his series to add support for interlaced content.
The fix can be applied independently so I'm including it
here.

Patches 3 and 4 correspond to fixes found by Francois Buergisser
while doing some tests on ChromeOS.

Ezequiel Garcia (1):
  media: hantro: Fix s_fmt for dynamic resolution changes

Francois Buergisser (2):
  media: hantro: Fix motion vectors usage condition
  media: hantro: Fix picture order count table enable

Jonas Karlman (1):
  media: hantro: Fix H264 max frmsize supported on RK3288

 .../staging/media/hantro/hantro_g1_h264_dec.c |  6 ++--
 drivers/staging/media/hantro/hantro_v4l2.c    | 28 +++++++++++++------
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  4 +--
 3 files changed, 24 insertions(+), 14 deletions(-)

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
