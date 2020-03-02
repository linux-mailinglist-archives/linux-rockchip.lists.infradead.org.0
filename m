Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0581D175D49
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 15:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/k2j2ufHsMJM95bbQeN6AYFF5ym6l3lLGAQJuqKEi3c=; b=MNsZV6UIdwciKS
	MOlmHnoN4z+je38Xq/g2nvzj+sx8CGdG+Br/EPNGMi11p+3CN9KEZx0WoNFhptftx1UON8UmAN1M0
	f4EdKJ5FOdvmuUEfJLiJxAjMlM4uQNB3aPNmx8TKTw8Uy/v3VqGHKLVGd59nBZt+bhV0fZu3udwZJ
	hK8K3oOsXGkbX3APVZtfOfg0zsxBiN2GKePMwHMrUlXu+PQWYvZsuJYCrvEsErc1FG0reRjUyY2TM
	KZg7vOcbkgOIQx5GVKqxhKxOhe7un54JTjrD5/L10kX2I+92mpvhkUjvIl8qqvFi2rjjIlQES75uk
	q8Iz/RdNVeECRfcNJJew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8mAU-0008Iv-1b; Mon, 02 Mar 2020 14:35:38 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8mAQ-0008IB-Mh
 for linux-rockchip@lists.infradead.org; Mon, 02 Mar 2020 14:35:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 162EB294121;
 Mon,  2 Mar 2020 14:35:33 +0000 (GMT)
Date: Mon, 2 Mar 2020 15:35:29 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v6 5/6] media: rkvdec: Add the rkvdec driver
Message-ID: <20200302153529.4e2429e7@collabora.com>
In-Reply-To: <20200302145746.3e94c1d1@coco.lan>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-6-ezequiel@collabora.com>
 <20200302145746.3e94c1d1@coco.lan>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_063534_873799_F13E2356 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 2 Mar 2020 14:57:46 +0100
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> > +	for (j = 0; j < 3; j++) {  
> 
> Again a magic number. I guess this came from that big "M_N" table with 4
> elements, right? Please use a define instead of hardcoding a number
> here.

Nope, it's unrelated to the cabac_table size, it's related to how the
HW accesses the P/B reflists (there are 1 P reflist, and 2 B reflists,
hence the 3 here). I guess we can have a '#define NUM_REFLISTS 3'.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
