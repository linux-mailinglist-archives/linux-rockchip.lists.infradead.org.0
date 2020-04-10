Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5936A1A45EA
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 13:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VfcRKGp9hP/ljIPsWr5/K7cOylHGziI24sTWDgwN2qs=; b=uEHoMw+8R/adKT
	Jz/fnDxakDRmMFrjhtsp0Rtvp5wjBA+Ww4PmeITzOT6hWUg8hRZ2NPGEoXLmMb1o1THsIHLnqj7pN
	vTjYLWVrBOQUK71mPPgqAZ+Lui+9ruC+pjViBWSiIpW6jMU+rcvTCpoS91IZMXDmuiHTFHDJU8Kaw
	+xgL3qW4Q5NZwJtdDTZSQxXibydaSfC78qxXFl5/VIF9WbbcyIA+qtEffN+NOZXguoBc+fEp6/0Ng
	lypzabapclDO1JFbG9QVA0nNiEFXezqo+SalA994aaHavZ8B458dKXSdd1YRmQ6+bpHD3hq3viYeJ
	x694Gc3koISYrcB2N8lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsC3-0001Ot-RO; Fri, 10 Apr 2020 11:51:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsC0-0001OD-IX
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 11:51:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 480D12A0E46
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] media: rkvdec: Add a VP9 backend
Date: Fri, 10 Apr 2020 08:51:10 -0300
Message-Id: <20200410115113.31728-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_045128_741356_B9DEFB3A 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Second iteration of the VP9 stateless codec uAPI, plus
support for Rockchip VDEC.

This is mostly identical to first iteration, as you can see,
the changelog is quite minimal.

Feedback and testing welcome!

Thanks,
Ezequiel

Changelog
---------

v2:

* Documentation style issues pointed out by Nicolas internally.
* s/VP9_PROFILE_MAX/V4L2_VP9_PROFILE_MAX/
* Fix wrong kfree(ctx).
* constify a couple structs on rkvdec-vp9.c

This series applies on top of media master, plus Rockchip VDEC
driver v8 series [1]

[1] https://patchwork.linuxtv.org/project/linux-media/list/?series=2107

Boris Brezillon (3):
  media: v4l2-ctrls: Add the [__]v4l2_ctrl_s_ctrl_compound() helpers
  media: uapi: Add VP9 stateless decoder controls
  media: rkvdec: Add the VP9 backend

 Documentation/media/uapi/v4l/biblio.rst       |   10 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        |  584 ++++++
 drivers/media/v4l2-core/v4l2-ctrls.c          |  257 +++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 drivers/staging/media/rkvdec/Makefile         |    2 +-
 drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1572 +++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c         |   56 +-
 drivers/staging/media/rkvdec/rkvdec.h         |    6 +
 include/media/v4l2-ctrls.h                    |   44 +
 include/media/vp9-ctrls.h                     |  515 ++++++
 10 files changed, 3043 insertions(+), 4 deletions(-)
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
 create mode 100644 include/media/vp9-ctrls.h

-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
