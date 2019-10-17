Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9A0DA65F
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 09:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puOE7Squwf4GwYSkQ+6BavjHTIzsN/+Oehq00nfzEPc=; b=ivLThHvN9BnhQ6
	gB1H2bpllW3U8ew8lOgWqLVymCWh03QZskh1RrVwBUdUKM3krETkbrFSGNJx1vz/JcGPnM7wZqPc2
	sszXVaVKxHslXStYTC/OcgL+4uZKQzZ7kLDMu9Cj5Aw5CESTyyWI0sGY1VxF2kiH5ukZbSc5t4ELt
	etzTSZhyRlEClZ1zGeJcXdlUP5clbVpvpHaQiQl/S414t5subUDizPgE5AkAEmvahdMMsFleC89yL
	fwTV9QR0IWdmrvm9DVK+kNozYWoyv6Ce7pi3EOfoBs1gXwr8R11ncPKPRf9+4fsy3ODB7VsaO6K+b
	1NHxq6EUmocaJupzO3Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0AE-0007jd-Gb; Thu, 17 Oct 2019 07:25:38 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iL09v-0007VB-O1; Thu, 17 Oct 2019 07:25:19 +0000
Date: Thu, 17 Oct 2019 00:25:19 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 01/25] resource: Add a resource_list_get_entry_of_type
 helper
Message-ID: <20191017072519.GA19517@infradead.org>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-2-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-2-robh@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:06:23PM -0500, Rob Herring wrote:
> +static inline struct resource_entry *resource_list_get_entry_of_type(struct list_head *list,
> +							      unsigned long type)

This adds a way too long line.

Part of that is that the name just seems way too long as well, any
good shorter name?  resourse_list_first_type?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
