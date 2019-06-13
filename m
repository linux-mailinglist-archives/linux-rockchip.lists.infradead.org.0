Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2658143907
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 17:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HuOQ2mKeISUqACMLzW1yBesMt0kB/2WSu8lJ+o8rYUk=; b=hARnyYNiYEcGX4
	TzBDZYYvDHXuT7UDZnfS3+MCY+oa9N0DT0Xkljfediu/CjNFjgFo+zfIOfjkhXcbaBJ90UgQszGQE
	HAuAsa3D2SNu/nhXMHbz7Q4ixfgILFysp09mDu/XUj0g+PB3v6T68F0SznMb1VA69dUGe+PEV4uSJ
	biZ1K/HyBUSyNaS5nk2aIii6qqGFmkQjMl62w+gTjrKkwXLadjSiM4xOYzhaAhXRkzEh5r8J7Jssh
	7HCBceBg5NFMvxOoxSHDbprO5qmsFB5UKj9ev8Khux/uRvRoRttXBnhzg3yF1dmWlLuLQuGuQVdU5
	KP8DBZarK8DQaaiPz/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRNa-0002CI-Ly; Thu, 13 Jun 2019 15:11:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRNV-0002BW-ON
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 15:11:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4EA4F281A15
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH 0/2] RK3288 VP8 decoding support
Date: Thu, 13 Jun 2019 12:10:38 -0300
Message-Id: <20190613151040.8971-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_081101_918015_C0DB22EE 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patchset adds support for Hantro G1 VP8 stateless decoding,
as available on RK3288 SoC.

In order to support VP8 stateless decoding, a new pixel format
is introduced V4L2_PIX_FMT_VP8_FRAME, to be used with a new control
V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR.

The VP8 stateless uAPI was submitted as an RFC. The changes
in this v1 are:

Changes from RFC:
* Verify the various ABIs.
* Move entropy coder state fields to a struct.
* Move key_frame field to the flags.
* Remove unneeded first_part_offset field.
* Add documentation.

The ABI has been verified with Maxime Ripard's tools:

https://gitlab.collabora.com/ezequiel/v4l2-ctrl-abi-check

Pawel Osciak (1):
  media: uapi: Add VP8 stateless decoder API

ZhiChao Yu (1):
  media: hantro: Add support for VP8 decoding on rk3288

 Documentation/media/uapi/v4l/biblio.rst       |  10 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 311 ++++++++++
 .../media/uapi/v4l/pixfmt-compressed.rst      |  20 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |   8 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
 drivers/staging/media/hantro/Makefile         |   4 +-
 drivers/staging/media/hantro/hantro.h         |   5 +
 drivers/staging/media/hantro/hantro_drv.c     |   6 +
 .../staging/media/hantro/hantro_g1_vp8_dec.c  | 548 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  17 +
 drivers/staging/media/hantro/hantro_v4l2.c    |   1 +
 drivers/staging/media/hantro/hantro_vp8.c     | 188 ++++++
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  22 +-
 include/media/v4l2-ctrls.h                    |   3 +
 include/media/vp8-ctrls.h                     | 110 ++++
 15 files changed, 1252 insertions(+), 2 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g1_vp8_dec.c
 create mode 100644 drivers/staging/media/hantro/hantro_vp8.c
 create mode 100644 include/media/vp8-ctrls.h

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
