Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA23010B521
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 Nov 2019 19:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BobvuQdpbPZ6+VtrK87P+hKfqJhggKcVORVgjOtkVKQ=; b=E5NN91xKNW3d9Cf4fm047aa5u
	wlHMsFotbfoGhZUMq+sX8gG0qDxmrUi36H8uNV+b9/D4QjW47W6gYbUKCpWxAf0bMQoNwTPLvdsp7
	LH8pGF0CNjj42myEGu6fA7IFEBg56IvnlYRlkCPRy7HvVv706WvxsQhmN38SntBRU3iZxqmMul5qi
	glLy9VPzbRIZExn67mdvLnqdFsM/gyIJJR0H8y15APyQdmfgD+2Tuaz6Wz8mxKS8ql9bwh+Gkgo6s
	tD6PNgOzeri8mIs3RSEaKEokshZd1DOsuoi7DBj8FvSVjx+8JeJDgMVUCeqVONHsCWnC58ira9htO
	tHPjOP0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1i9-0002iw-7I; Wed, 27 Nov 2019 18:06:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1hr-0002XG-6R; Wed, 27 Nov 2019 18:06:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1924431B;
 Wed, 27 Nov 2019 10:06:25 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 210853F6C4;
 Wed, 27 Nov 2019 10:06:20 -0800 (PST)
Subject: Re: [PATCH v3 1/7] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
To: Leon Romanovsky <leon@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-2-nsaenzjulienne@suse.de>
 <20191126125137.GA10331@unreal>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6e0b9079-9efd-2884-26d1-3db2d622079d@arm.com>
Date: Wed, 27 Nov 2019 18:06:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126125137.GA10331@unreal>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_100627_283838_CC67DCC3 
X-CRM114-Status: GOOD (  13.66  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Hanjun Guo <guohanjun@huawei.com>,
 Frank Rowand <frowand.list@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, f.fainelli@gmail.com,
 linux-rockchip@lists.infradead.org, linux-rdma@vger.kernel.org, maz@kernel.org,
 phil@raspberrypi.org, linux-acpi@vger.kernel.org, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 wahrenst@gmx.net, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, andrew.murray@arm.com,
 "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 26/11/2019 12:51 pm, Leon Romanovsky wrote:
> On Tue, Nov 26, 2019 at 10:19:39AM +0100, Nicolas Saenz Julienne wrote:
>> Some users need to make sure their rounding function accepts and returns
>> 64bit long variables regardless of the architecture. Sadly
>> roundup/rounddown_pow_two() takes and returns unsigned longs. Create a
>> new generic 64bit variant of the function and cleanup rougue custom
>> implementations.
> 
> Is it possible to create general roundup/rounddown_pow_two() which will
> work correctly for any type of variables, instead of creating special
> variant for every type?

In fact, that is sort of the case already - roundup_pow_of_two() itself 
wraps ilog2() such that the constant case *is* type-independent. And 
since ilog2() handles non-constant values anyway, might it be reasonable 
to just take the strongly-typed __roundup_pow_of_two() helper out of the 
loop as below?

Robin

----->8-----
diff --git a/include/linux/log2.h b/include/linux/log2.h
index 83a4a3ca3e8a..e825f8a6e8b5 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -172,11 +172,8 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
   */
  #define roundup_pow_of_two(n)			\
  (						\
-	__builtin_constant_p(n) ? (		\
-		(n == 1) ? 1 :			\
-		(1UL << (ilog2((n) - 1) + 1))	\
-				   ) :		\
-	__roundup_pow_of_two(n)			\
+	(__builtin_constant_p(n) && (n == 1)) ?	\
+	1 : (1UL << (ilog2((n) - 1) + 1))	\
   )

  /**

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
