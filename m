Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46687100B41
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 19:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSrYvbpBHOtvr8mhJwYDgQFoReh783pb6Op9SMv5j0o=; b=t39AYdAfebX9jC
	G/KGAuw5p3b4sJTGsMJVpS2tjvr/qeADooW8YR5YhVijyl5XTb1XdlwPcRjbuLLMCor1FgjbpxGeW
	sjRVHGQBDw7qyxgD90sAekkeOuea/9ogAEEjHgvL0kr7vII1oUH8MMbjP7csL0+QUFzpcyAdrN5V9
	BegezCjljgL/01aRYvomgSSQo5tFyv8o5gZLWCxY9QNx6wY/71zBubc2L3vLEF4VjYoJHsnqcH5EK
	v5aqaHxO+fYZ7gz/wTzOu8vhpDOh1BwGyVaZsoWW4DFNL8uo6A4Vbjk6w4VgZd9Mj4vGxAgj/3Rg6
	ZBIACz2eudlE2izLwfMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlZB-0005Xz-Ve; Mon, 18 Nov 2019 18:16:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlYy-0005IH-47; Mon, 18 Nov 2019 18:15:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C48A41FB;
 Mon, 18 Nov 2019 10:15:44 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49A283F703;
 Mon, 18 Nov 2019 10:15:43 -0800 (PST)
Date: Mon, 18 Nov 2019 18:15:38 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Message-ID: <20191118181538.GA2261@e121166-lin.cambridge.arm.com>
References: <20191118115930.GC9761@sirena.org.uk>
 <20191118142428.GA27459@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118142428.GA27459@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_101548_210978_68D8553A 
X-CRM114-Status: GOOD (  16.18  )
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
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, andrew.murray@arm.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 08:24:28AM -0600, Bjorn Helgaas wrote:
> On Mon, Nov 18, 2019 at 11:59:30AM +0000, Mark Brown wrote:
> > On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> > > Null checks are both cheaper and more readable than having !IS_ERR()
> > > splattered everywhere.
> > 
> > > -	if (IS_ERR(rockchip->vpcie3v3))
> > > +	if (!rockchip->vpcie3v3)
> > >  		return;
> > >  
> > >  	/*
> > > @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
> > >  		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> > >  			return PTR_ERR(rockchip->vpcie12v);
> > >  		dev_info(dev, "no vpcie12v regulator found\n");
> > > +		rockchip->vpcie12v = NULL;
> > 
> > According to the API NULL is a valid regulator.  We don't currently
> > actually do this but it's storing up surprises if you treat it as
> > invalid.
> 
> I don't know anything about the regulator API, but the fact that NULL
> can be a valid regulator is itself a little surprising :)

if (rockchip->vpcie3v3 == NULL) is true the driver would currently
panic the kernel AFAICS.

rockchip_pcie_set_power_limit()
->regulator_get_current_limit(NULL)
 -> _regulator_get_current_limit(NULL)
   -> regulator_lock(NULL)
     -> regulator_lock_nested(NULL, NULL)
       -> ww_mutex_trylock(&NULL->mutex)

Also, by making NULL a valid regulator, it means that regulators
(ie pointers) with default values are valid whether we call
devm_regulator_get* or not. I understand this patch can be dropped
but that per-se does not make this driver code any more robust AFAICS.

Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
