Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD40FE25D
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 Nov 2019 17:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVWsE6h31e5VgnYaCTHWTWRw05mgIMv85nfDh6s6FbI=; b=Omr0ztxOmd0mv7
	dPIL5E54bfQIUI+iAVw37MD00Ja1iNUti3lQOQ3CIo08hGUuAj3/q3i0ZTPILg4rNmE8gL/ybRi/q
	4Zdyot6Nb+sAGTwBJ4vCCcXqVwnocAIuvuLP4HYzd3RrVRB/OJRGgUJT9VMpJ9MMkwOYX/J7NTGoE
	z7syRn9ZkQwdNtX/3GQlGMS07bDH5CUn+hMcOW5egx/ksIMo29u+cZFexphcPBr+aV72yFvg0lUGI
	uBl2gbPwQgTZpVnhvd/lbruOqEJBGOR7nSqwLKfcvL6gFZRUWO8bThVKZ36S+05I6xI1qtw8Qho8+
	I0BN+BB5gX9ayIZ+noyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVeBh-0000BZ-40; Fri, 15 Nov 2019 16:11:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeBd-0000AO-Ro
 for linux-rockchip@lists.infradead.org; Fri, 15 Nov 2019 16:11:07 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iVeBZ-0002s0-2g; Fri, 15 Nov 2019 17:11:01 +0100
Message-ID: <272dedf2cc25053475e9536b446b434f4754f62c.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/3] media: hantro: Support color conversion via
 post-processing
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Date: Fri, 15 Nov 2019 17:10:59 +0100
In-Reply-To: <dc637b43a4ef4609f9200f3fc91ee76fef75f64a.camel@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
 <20191113175603.24742-3-ezequiel@collabora.com>
 <1e1c7a0e3d25187723ccac1a8360b5aae9aed8cd.camel@pengutronix.de>
 <dc637b43a4ef4609f9200f3fc91ee76fef75f64a.camel@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_081105_897600_F572BCDB 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Fri, 2019-11-15 at 12:44 -0300, Ezequiel Garcia wrote:
> Hello Philipp,
> 
> Thanks for reviewing.
> 
> On Thu, 2019-11-14 at 10:48 +0100, Philipp Zabel wrote:
[...]
> > Why isn't PP enabled in prepare_run? Does this mean the first frame is
> > not post-processed?
> > 
> 
> No, because hantro_finish_run is called (despite its name)
> before the decoding operation is actually triggered.
> 
> I guess this hantro_finish_run name adds some confusion:
> prepare_run and finish_run should be something along
> start_prepare_run, end_prepare_run. 

Ah, ok then. I was confused because I just came from looking at coda-vpu 
code, where finish_run is a callback called after the device has
finished processing. Maybe I should rename that as well.

> And also, perhaps disabling the post-processor in prepare_run
> works just fine. I need to check that.

Ok.

[...]
> > > +#define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
> > > +	do { \
> > > +		if ((vpu)->variant->postproc_regs->(reg_name).base)	\
> > > +			hantro_reg_write((vpu), \
> > > +					 &(vpu)->variant->postproc_regs->(reg_name), \
> > > +					 (val)); \
> > > +	} while (0)
> > 
> > Why all these checks, are any of the register fields optional?
> > 
> 
> That was the plan. Perhaps now it makes less sense,
> but maybe it's safer this way, if it's extended?
> 
> OTOH, we might want to make sure the driver fails (or warns).

I think that would be better than silently ignoring them.

Although I don't quite see the point in repeatedly checking the presence
of mandatory register fields at runtime.

regards
Philipp


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
