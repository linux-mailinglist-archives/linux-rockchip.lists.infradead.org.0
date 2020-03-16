Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BF2187466
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 22:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UxSTUBSI/eSq+Wbq9AeJgoqA9SeRWeummeNYs3XJlAI=; b=ooTBIUt1M+NrTr
	MAmZ8wY59kQj/W1Uu5dW/P2rsbgF/rke0HgaAHmqCbfGh7ah+UZsU2AflW4SekB9qdQ4kZDGGz0HM
	j/aJWg+rD5bBE89vCq1ZTQmhq7zDrvb321E2xxmyYKWUnWjcAY3oHPU/YsVWQhLcgTzBe5/9Su284
	M8HENmlGDuaxRwMrVhqNYtBFbFpQLg5OV/ADmdhF5ne5Jkf6YzD9aMoLUU8HRqxRq+gPHBXPq9JNq
	qhlh7m9T5R4jv7EB6geP1rm6xMqahTzZxOAfq6vTjKgwq4L7n2oL6+wm0KjDOfiQMe971BpfhR5Ne
	9tUt8FUpBYB7qD6uaEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDwr6-0003jo-58; Mon, 16 Mar 2020 21:01:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDwr2-0003iu-0H
 for linux-rockchip@lists.infradead.org; Mon, 16 Mar 2020 21:00:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 106DF28A3BA
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 0/2] media: staging: rkisp1: allow simultaneous streaming
 from multiple capture devices
Date: Mon, 16 Mar 2020 18:00:42 -0300
Message-Id: <20200316210044.595312-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_140056_173824_6163F44C 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

This series adds support for simultaneous streaming from both capture
devices (rkisp1_selfpath and rkisp1_mainpath).

It depends on the following series for multistream to work properly, but
it doesn't mean it can't be merged before:

	"media: add v4l2_pipeline_stream_{enable,disable} helpers"
	https://patchwork.linuxtv.org/cover/62233/

And it is also available at:

	https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/multistream

Patch 1/2 fixes return error handling from pm functions, which was
preventing the second stream to start.

Patch 2/2 serializes start/stop streaming calls, since they both
and modify shared variables.

Changes in v2:
- Rebased on media/master
- Removed the following patch from the series:
"media: staging: rkisp1: do not call s_stream if the entity is still in use"
It was replaced by "media: add v4l2_pipeline_stream_{enable,disable} helpers"
https://patchwork.linuxtv.org/cover/62233/

This series was tested with:
============================

SEN_DEV=/dev/v4l-subdev3
ISP_DEV=/dev/v4l-subdev0
RSZ_SP_DEV=/dev/v4l-subdev2
RSZ_MP_DEV=/dev/v4l-subdev1
CAP_SP_DEV=/dev/video1
CAP_MP_DEV=/dev/video0

WIDTH=1920
HEIGHT=1080
RAW_CODE=SRGGB10_1X10
YUV_CODE=YUYV8_2X8

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $SEN_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $ISP_DEV
v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV

v4l2-ctl --set-subdev-selection pad=2,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV
v4l2-ctl --set-subdev-fmt pad=2,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $ISP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_MP_DEV

v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_SP_DEV
v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_MP_DEV

sleep 1

v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_SP_DEV --stream-to=/tmp/test_sp.raw &
v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_MP_DEV --stream-to=/tmp/test_mp.raw &

wait
echo "Completed"

Helen Koike (2):
  media: staging: rkisp1: cap: fix return values from pm functions
  media: staging: rkisp1: cap: serialize start/stop stream

 drivers/staging/media/rkisp1/rkisp1-capture.c | 13 +++++++++++--
 drivers/staging/media/rkisp1/rkisp1-common.h  |  2 ++
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  2 ++
 3 files changed, 15 insertions(+), 2 deletions(-)

-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
