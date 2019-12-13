Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AB811E4C5
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 14:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYTbmQujerpg9jqoOZb3v6N7U9Gjv+OLHFwXMye0jrk=; b=f/Qxhd0/9lx6pF
	0As5uLYqsuB8sp48a2lbFTmIzxn7q004rKORm7uGEW0R1OKLsSaSmp0yfqAB9DXFu619DCY6Z9SRM
	ZjxhYf79G+sVx65mj7fMkctreUA5eT8N2HEFJJZpm0xhC3+oTgp+hi181QbnIUkUs6xOYT/QQuF1w
	EOMhT+6RgE6KPfGbcDf1e/EG9JRrwIAOArhdwdYAynZjAyOwxi/IcFT2tJ5Hfk1jok1j6RWQEUYIH
	0d2K06DqEv0UE/z7ML2K0n/xQ+2oWtcmYcPGmQ/9I0mlsF5Q9R2hgnUDyrO/yqm9n1vrDZAY9/gQK
	q9n/7+HLDmymVYkT0VgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifl8V-00032Q-86; Fri, 13 Dec 2019 13:37:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifl8S-000325-7F
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 13:37:37 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BD2F6292C8F;
 Fri, 13 Dec 2019 13:37:34 +0000 (GMT)
Date: Fri, 13 Dec 2019 14:37:30 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil
 <hans.verkuil@cisco.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>,
 linux-media@vger.kernel.org
Subject: Re: [PATCH 0/3] media: rkvdec: Add a VP9 backend
Message-ID: <20191213143730.3b1e4d9e@collabora.com>
In-Reply-To: <20191213133157.105554-1-boris.brezillon@collabora.com>
References: <20191213133157.105554-1-boris.brezillon@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_053736_391838_E8622DA1 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 14:31:54 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> Hello,
> 
> This patch series adds controls for stateless VP9 decoders plus a VP9
> backend to the rkvdec driver showing how those controls can be used in
> a real implementation. This means this series depends on the rkvdec
> series posted here [1].
> 

Forgot to mention that this implementation has been tested with a
modified version of FFmpeg (please don't look at the code/commits it's
all ugly...)

> Regards,
> 
> Boris
> 
> [1]https://patchwork.linuxtv.org/project/linux-media/list/?series=1483

[2]https://github.com/bbrezillon/FFmpeg/commits/v4l2-vp9

> 
> Boris Brezillon (3):
>   media: v4l2-ctrls: Add the [__]v4l2_ctrl_s_ctrl_compound() helpers
>   media: uapi: Add VP9 stateless decoder controls
>   media: rkvdec: Add the VP9 backend
> 
>  Documentation/media/uapi/v4l/biblio.rst       |   10 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        |  584 ++++++
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  258 +++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  drivers/staging/media/rkvdec/Makefile         |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1572 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c         |   56 +-
>  drivers/staging/media/rkvdec/rkvdec.h         |    6 +
>  include/media/v4l2-ctrls.h                    |   44 +
>  include/media/vp9-ctrls.h                     |  515 ++++++
>  10 files changed, 3044 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
>  create mode 100644 include/media/vp9-ctrls.h
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
