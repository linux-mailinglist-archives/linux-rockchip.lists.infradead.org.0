Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB4D14EC16
	for <lists+linux-rockchip@lfdr.de>; Fri, 31 Jan 2020 12:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isF34Mj2LPJ+7EC4+YUdqSIF3bQg+02Br+LsqceSd48=; b=J1oUjX5i9KWngS
	N8JeCbyN//Oeyj40qlvumXqS/K6dZLCI6OTHSUqfhYv3X4tP5t+wHc++n/FnfMRi9VmyiBqXNuUZ1
	nYxaOly72zMPQMwBwUJwiBPK15aq32t+pL5WObqZjm4JGFS0c9XmuFSANDxU1Xvngw9Emv/RK5k21
	VYpZipH/EpuXrTiFDEhMD9i4t/sPzykeFdF3ks83mohpdlmC9koCnqJKw+tEbvOPlcMJB/qPp9tyA
	njOHmCxtpmZ/4dCm/hH9JSS/3GQymqDcuDu5gUOXYMp1X3eWoCNawKyW10Ej8Es5Ul0P3lDKhRpQ2
	VxJVfOnsDSHP3wD12Tng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixUsL-000436-5J; Fri, 31 Jan 2020 11:54:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixUsH-00042K-GK
 for linux-rockchip@lists.infradead.org; Fri, 31 Jan 2020 11:54:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 27B9E28A964
Message-ID: <739f60a89646cc92f26e34523cbe8aaab5697351.camel@collabora.com>
Subject: Re: [PATCH v4 5/6] media: rkvdec: Add the rkvdec driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Fri, 31 Jan 2020 08:53:47 -0300
In-Reply-To: <20200130171249.3ae0444a@collabora.com>
References: <20200129195501.8317-1-ezequiel@collabora.com>
 <20200129195501.8317-6-ezequiel@collabora.com>
 <20200130171249.3ae0444a@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_035413_808687_B828C024 
X-CRM114-Status: GOOD (  24.06  )
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

On Thu, 2020-01-30 at 17:12 +0100, Boris Brezillon wrote:
> On Wed, 29 Jan 2020 16:55:00 -0300
> Ezequiel Garcia <ezequiel@collabora.com> wrote:
> 
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > 
> > The rockchip vdec block is a stateless decoder that's able to decode
> > H264, HEVC and VP9 content. This commit adds the core infrastructure
> > and the H264 backend. Support for VP9 and HEVS will be added later on.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> > v4:
> > * Make poc tables const, as suggested by Hans
> > * Move buffer extra space calculation TRY_FMT, as done on Hantro.
> > * Get rid of vb2_request_get_buf and open-code
> >   following Cedrus. We can move it to a helper as a follow-up patch.
> 
> Well, we know what that means in practice :-).
> 

Well, not necesarily. I think we can expect a helper soon,
but it doesn't have to be part of this series :-)

And perhaps we can find another way to link a media request
to a vb2 queue, so we don't have to iterate over objects
like we are doing now?

> > new file mode 100644
> > index 000000000000..1293b3621364
> > --- /dev/null
> > +++ b/drivers/staging/media/rkvdec/rkvdec-regs.h
> > @@ -0,0 +1,239 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Rockchip VPU codec driver
> > + *
> > + * Copyright (C) 2015 Rockchip Electronics Co., Ltd.
> > + *	Jung Zhao <jung.zhao@rock-chips.com>
> > + *	Alpha Lin <alpha.lin@rock-chips.com>
> > + *
> > + * This software is licensed under the terms of the GNU General Public
> > + * License version 2, as published by the Free Software Foundation, and
> > + * may be copied, distributed, and modified under those terms.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + */
> 
> Oops, looks like I forgot to remove the license text here. Also not
> entirely sure the copyrights are correct (might be a copy from the
> hantro driver instead of the rkvdec one).
> 

Right.

> 
> > diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> > new file mode 100644
> > index 000000000000..529ef86510d3
> > --- /dev/null
> > +++ b/drivers/staging/media/rkvdec/rkvdec.h
> > @@ -0,0 +1,124 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Hantro VPU codec driver
> > + *
> > + * Copyright 2018 Google LLC.
> > + *	Tomasz Figa <tfiga@chromium.org>
> > + *
> > + * Based on s5p-mfc driver by Samsung Electronics Co., Ltd.
> > + * Copyright (C) 2011 Samsung Electronics Co., Ltd.
> > + */
> 
> This header has been copied from the hantro driver, so it's most likely
> wrong.
> 

Oh, I totally missed this.

Thanks for reviewing!
Ezequiel




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
