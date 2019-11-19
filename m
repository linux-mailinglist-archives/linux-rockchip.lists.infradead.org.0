Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB00E1029DE
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 17:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4kzxz+ma8HHeJQxHAd2TNVvBnQdKU1hqb9Tk4Zyk1E=; b=M9msdDsOvECjnu
	uODeIjNR155H2mrb061d+Whytrdptc9noiWEwlQYRpDTMauobypgs4IyanbRaeKPbZIDfmGEAOxYP
	UbI2QaxGYfdjpF5kb2OLJ1HPZELOSt+aVDwMEaMSuthe7po5MqQ/ZwADY8Z9CLV+szgjCNd7YM1KE
	q+/3Hfux7q0SdjndxnVIm7q4xKG5+a+C9t/HuCGQ37pk+VPIB6WWg172JjWvn4U+14G9D3ZZ65QKV
	esAPQQ1e0oN5eFNuOGZmu42kHMnAI+Bb2vzpM/nSOvazYBBA4e2Z5MkJLcglMhvdfTDi+OAPty3NY
	RNYl3A+/kxIfd2QeYYmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6mg-0000ot-Sz; Tue, 19 Nov 2019 16:55:22 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6mP-0008GW-Ep
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 16:55:07 +0000
Received: by mail-qt1-x842.google.com with SMTP id o49so25370175qta.7
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 08:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WS7CgNbVTLnXI+F//St0LEaj4tnKGZAzwSTTN2+gQVc=;
 b=iVAYjQHLPSEvwSFNlSCeOYv+886dqBtEdSB9f197Q+2nfx9MYsTdaFER/T+YT3sU4F
 2sV2cUTWCgHWA/Sy8/JS1sLjB3RmPldgWEzHpDH3Zshmlx9sUeJd3WCjr0zJdBai7b+T
 zy0kDiCzrL33Em9pVCTZenB2tDXqNlQKDuCoq8qOeSxuw5syY2PYyALR4CmEkS3xxRkF
 KqdBDYqlUyjmKLg0jfLiPHNdfpwXCKAj7llRkxZqK0EAlnUnUfe1TveheX+AtLUcLsQM
 5aonmzsTTQd9WPPpdNsJ0+Co3d3w0ppLUo0gKmx956jS+2Y6gtYKaBK+c/0EDbMVCE7m
 wyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WS7CgNbVTLnXI+F//St0LEaj4tnKGZAzwSTTN2+gQVc=;
 b=i/awo9zQEsBvTLf2VtWFGw3dV+cX3vUM8+cKY5Pcul6+hNOo/TwsaMbr4ZV25AVkkz
 Zfo+KOu9kF8rbVX8POJCzgz4faE8picd1ZNXnyBvttmlhFWFpXCbdJKBxA2izP71B5pI
 WTJp/A8X+vL+CHiweVrbL2xFGKH4UigHERw8w2SRUUuFzDcyUmFo+P107rhHFRIkv2JB
 DI/LsdNQrbIu+gy2Z3u7SSsq+4ZbeTW2U1s6c9NK4cTjhXSYM9xyCUk7LhHWxln5lhR1
 N0+MvEjvA85yqBQx6lcMnug/PR4mS4EePwG4tyqyB4mAur18iKqpSM84mCZbqOzFE6LS
 iFNw==
X-Gm-Message-State: APjAAAWkKPFMZfBL2tSHb6lKkL2KHrn8qIdn9yXDC9Tfhe+1sZzV4Ez5
 EI7WB92KsRL6kEZCC/VabC14Bg==
X-Google-Smtp-Source: APXvYqzkFUvos9MykZsh27TV/+hmzGyyLBxh0y1ceE3cL9LAkahX/1j2YfuXdRVTSUCh1q0oLUrsfw==
X-Received: by 2002:ac8:6757:: with SMTP id n23mr875894qtp.345.1574182503733; 
 Tue, 19 Nov 2019 08:55:03 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-180.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.180])
 by smtp.gmail.com with ESMTPSA id v186sm10479291qkb.42.2019.11.19.08.55.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 19 Nov 2019 08:55:02 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1iX6mM-0001Yp-4X; Tue, 19 Nov 2019 12:55:02 -0400
Date: Tue, 19 Nov 2019 12:55:02 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 1/6] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
Message-ID: <20191119165502.GB4991@ziepe.ca>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-2-nsaenzjulienne@suse.de>
 <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
 <052d07fb4eb79b29dd58cab577d59bab6684329a.camel@suse.de>
 <56cbba61d92f9bc7d0a33c1de379bcd5cf411cb8.camel@suse.de>
 <20191119162849.GT43905@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119162849.GT43905@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_085505_513953_078EB49C 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Shawn Lin <shawn.lin@rock-chips.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-rdma@vger.kernel.org,
 maz@kernel.org, phil@raspberrypi.org, iommu@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, f.fainelli@gmail.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 mbrugger@suse.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, Tom Joseph <tjoseph@cadence.com>, wahrenst@gmx.net,
 james.quinlan@broadcom.com, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 04:28:50PM +0000, Andrew Murray wrote:
> On Tue, Nov 19, 2019 at 01:43:39PM +0100, Nicolas Saenz Julienne wrote:
> > On Tue, 2019-11-19 at 12:30 +0100, Nicolas Saenz Julienne wrote:
> > > Hi Andrew, thanks for the review.
> > > > > +/**
> > > > > + * __roundup_pow_of_two64() - round 64bit value up to nearest power of
> > > > > two
> > > > > + * @n: value to round up
> > > > > + */
> > > > > +static inline __attribute__((const)) __u64 __roundup_pow_of_two64(__u64
> > > > > n)
> > > > 
> > > > To be consistent with other functions in the same file (__ilog_u64) you may
> > > > want to rename this to __roundup_pow_of_two_u64.
> > > 
> > > Sounds good to me.
> > > 
> > > > Also do you know why u64 is used in some places and __u64 in others?
> > > 
> > > That's unwarranted, it should be __u64 everywhere.
> > 
> > Sorry, now that I look deeper into it, it should be u64.
> 
> Do you know the reason why? I'd be interested to know.

__u64 must be used in header files that are under uapi - ie it is the
name of the symbol in userspace, and u64 does not exist.

u64 should be used in all code that is only inside the kernel, ie .c
files, internal headers, etc

I routinely discourage use of __uXX in kernel native code.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
