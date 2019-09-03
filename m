Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF31FA6905
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 14:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBccwv0brdYECpnvSwfR5rYSTIPeujyZhEMpSj5QT2E=; b=YQpfXpH5TZsGbR
	8YB1YyGA7644TValeyLywoM+asysaEEQqX0vCJmsUxusepEqdB5/4S1+LT1hPAX92i+prAo/6zbrA
	v7lfca8qeaFmr4+dAq2QLwRtd2JsyCA4bYp2GqnSRuCbUbNbm8A4mHEY5jXPIaHqkPIVDZxXHPekB
	JXH1Zi7gKaaHvZ5nhXAQt5R2C/RKpZjPUJWvp5Gm9dW8LfTeeb0unX5KQ8vgEQ4j7mEyzkAoa5kqZ
	mikAIZdDdfswBL+v20FHzPG8MUG6BgBuXCHDRnTS/GaCmfwCSouaeccOmrbeFNImOQSBsaYEa/UsE
	Fnft8JU4kYhn+NgjZNmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58J7-0000mB-SK; Tue, 03 Sep 2019 12:53:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58J4-0000lJ-GZ
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 12:53:11 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i58J0-0001Lr-Ol; Tue, 03 Sep 2019 14:53:06 +0200
Message-ID: <1567515184.5229.5.camel@pengutronix.de>
Subject: Re: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Date: Tue, 03 Sep 2019 14:53:04 +0200
In-Reply-To: <DB6PR06MB4007C140420365E83064C5BEACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567432843.3666.6.camel@pengutronix.de>
 <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <DB6PR06MB4007C140420365E83064C5BEACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_055310_555293_A02F9D42 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2019-09-03 at 07:54 +0000, Jonas Karlman wrote:
[...]
> After a closer look both ffmpeg and rkmpp only apply zig-zag scan and not field scan,
> ffmpeg will memcpy the scaling_matrix4/8 as is for vaapi, vdpau and nvdec,
> for dxva2 there is a workaround flag that controls if zig-zag should be applied or not.
> 
> I suggest a clarification of the expect order of values and use of the same value order as vaapi, vdpau and nvdec.
> i.e. have the scaling list values in "matrix order"/"raster order", after zig-zag scan has been applied,
> as is currently expected by cedrus and hantro after this patch.
> 
> I would also suggest a change to the expected order of the 8x8 scaling lists to follow the H264 standard,
> instead of the ffmpeg order like this patch and cedrus driver currently expects.
> 
> Expected scaling list order would then be,
> for 4x4: Intra Y, Intra Cb, Intra Cr, Inter Y, Inter Cb, Inter Cr,
> for 8x8: Intra Y, Inter Y, Intra Cb, Inter Cb, Intra Cr, Inter Cr.

I'm in favor of both, it seems unnecessary to reorder the lists in
userspace only to have the kernel reorder them back before passing them
to the hardware.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
