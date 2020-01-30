Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AFF14DE9B
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Jan 2020 17:13:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Qq+crfCu8h9GOdxessc1ADf+/SvKvKd2uta4Eb55Z4=; b=SmUzBAxN/qbSBZ
	zbZXoPZK8ekDV6H6zPbe+GihxhMmOmIDxeJvFOkcTXFN8vcu/Gq8Ik3wFb2Jt1GMK3TNFJaqEgcbV
	xmjaKIQEIs7P5xQoG2EDwAvOMSqyjQThr4XXb/2lw4NmOktimw6m/EkhGcepX0Dok8iIhxYG27y+V
	+Iq6cK9D36TMzkdXDpJ++dSyV/DY9/7aUoeuR3IKJPOPHztfU6SkGburxrvSz8y+LMTj8ceoAvoTe
	F+ZdozCYwaCwRJjFkkdQavQEoE4JlM3KeInAG5rjOH1qeeyVF/t52bhETsUWlE5h7T8LsJdLeLPfa
	J57jj+hLwMwu88tk7ttA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCR9-0004XL-JB; Thu, 30 Jan 2020 16:12:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCR7-0004P0-2E
 for linux-rockchip@lists.infradead.org; Thu, 30 Jan 2020 16:12:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BD536294F23;
 Thu, 30 Jan 2020 16:12:52 +0000 (GMT)
Date: Thu, 30 Jan 2020 17:12:49 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v4 5/6] media: rkvdec: Add the rkvdec driver
Message-ID: <20200130171249.3ae0444a@collabora.com>
In-Reply-To: <20200129195501.8317-6-ezequiel@collabora.com>
References: <20200129195501.8317-1-ezequiel@collabora.com>
 <20200129195501.8317-6-ezequiel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_081257_271998_E7D2A29D 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020 16:55:00 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> The rockchip vdec block is a stateless decoder that's able to decode
> H264, HEVC and VP9 content. This commit adds the core infrastructure
> and the H264 backend. Support for VP9 and HEVS will be added later on.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> v4:
> * Make poc tables const, as suggested by Hans
> * Move buffer extra space calculation TRY_FMT, as done on Hantro.
> * Get rid of vb2_request_get_buf and open-code
>   following Cedrus. We can move it to a helper as a follow-up patch.

Well, we know what that means in practice :-).

> new file mode 100644
> index 000000000000..1293b3621364
> --- /dev/null
> +++ b/drivers/staging/media/rkvdec/rkvdec-regs.h
> @@ -0,0 +1,239 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Rockchip VPU codec driver
> + *
> + * Copyright (C) 2015 Rockchip Electronics Co., Ltd.
> + *	Jung Zhao <jung.zhao@rock-chips.com>
> + *	Alpha Lin <alpha.lin@rock-chips.com>
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */

Oops, looks like I forgot to remove the license text here. Also not
entirely sure the copyrights are correct (might be a copy from the
hantro driver instead of the rkvdec one).


> diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> new file mode 100644
> index 000000000000..529ef86510d3
> --- /dev/null
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -0,0 +1,124 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Hantro VPU codec driver
> + *
> + * Copyright 2018 Google LLC.
> + *	Tomasz Figa <tfiga@chromium.org>
> + *
> + * Based on s5p-mfc driver by Samsung Electronics Co., Ltd.
> + * Copyright (C) 2011 Samsung Electronics Co., Ltd.
> + */

This header has been copied from the hantro driver, so it's most likely
wrong.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
