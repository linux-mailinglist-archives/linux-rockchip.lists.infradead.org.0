Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CA410064C
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 14:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHLmy5HyyH+ssVaSdi4y/NtQdoN4xgpUKHzBBBgGgCU=; b=RmS7B6FVqZwuEd
	LOgoM5/O+Mn4K6/VR0uiXmmRLW+Nz8y/yazs/75vC7Dtun0wKEmZzoz1xzznD65wFYJkURR8x+9wh
	/okOFFm4pb8vGCuq4H1etwfbCB6hwRbREew5ibNU8rG9kqqvyU7h90qKrgYRh9mDHHZEAwDUuZFFC
	lL6bBp3qJFsgwFhi5zcMBaGVj2gFkA2IDotkIqENv714KnnT0P8i1aGwbURZzVAjJQ61yDoXJJEKj
	ml4khud/oltEiaTGvzvMYh7OXQolGOaKoB0NE1JWUjbOJOkH8H9t1BUZiOASj9QyfZhMw/HmecbMK
	GHEesKrOCrth9knNeW7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWguG-0003u7-9w; Mon, 18 Nov 2019 13:17:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgtu-0003eK-4D; Mon, 18 Nov 2019 13:17:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71F431FB;
 Mon, 18 Nov 2019 05:17:05 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D100C3F6C4;
 Mon, 18 Nov 2019 05:17:04 -0800 (PST)
Date: Mon, 18 Nov 2019 13:17:03 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Message-ID: <20191118131702.GO43905@e119886-lin.cambridge.arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
 <20191118115930.GC9761@sirena.org.uk>
 <a59da4a4-de88-62a5-5f44-001f8e30221e@arm.com>
 <20191118123951.GM43905@e119886-lin.cambridge.arm.com>
 <b0e9a54e-4938-0afe-5059-bddf7e9ae1d9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0e9a54e-4938-0afe-5059-bddf7e9ae1d9@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_051706_211007_2C760353 
X-CRM114-Status: GOOD (  17.01  )
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
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org,
 shawn.lin@rock-chips.com, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 01:10:58PM +0000, Robin Murphy wrote:
> On 18/11/2019 12:39 pm, Andrew Murray wrote:
> > On Mon, Nov 18, 2019 at 12:20:10PM +0000, Robin Murphy wrote:
> > > On 18/11/2019 11:59 am, Mark Brown wrote:
> > > > On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> > > > > Null checks are both cheaper and more readable than having !IS_ERR()
> > > > > splattered everywhere.
> > > > 
> > > > > -	if (IS_ERR(rockchip->vpcie3v3))
> > > > > +	if (!rockchip->vpcie3v3)
> > > > >    		return;
> > > > >    	/*
> > > > > @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
> > > > >    		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> > > > >    			return PTR_ERR(rockchip->vpcie12v);
> > > > >    		dev_info(dev, "no vpcie12v regulator found\n");
> > > > > +		rockchip->vpcie12v = NULL;
> > > > 
> > > > According to the API NULL is a valid regulator.  We don't currently
> > > > actually do this but it's storing up surprises if you treat it as
> > > > invalid.
> > > 
> > > Ah, OK - I'd assumed NULL wasn't valid based on regulator_enable()
> > > immediately dereferencing its argument without any checks. If we'd rather
> > > not bake in that assumption then this patch can happily be ignored.
> > 
> > I'd suggest we drop this patch.
> > 
> > "IS_ERR(ptr)" is not the same as "!ptr", for values of ptr between 0 and
> > -4095 inclusive.
> 
> Hence the explicit initial "if (IS_ERR(ptr)) ptr = NULL;" condition quoted
> above ;)

Doh.

Andrew Murray

> 
> But yeah, it was merely an attempt at a minor cosmetic cleanup, so let's
> just forget about it to avoid any possible confusion.
> 
> Cheers,
> Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
