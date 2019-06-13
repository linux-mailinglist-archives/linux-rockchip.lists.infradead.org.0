Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5454C44FD1
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 01:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fg3MWe8OZZeP+wj1vVMPqtfKr+LflJYZjzaoLg1kp/A=; b=Ziy+D1in2ib5lX
	x248PoiuGS/vKF44g64MAtv+N2IOLPZScovMlEla2KZRgoS2wetunRoodWj7X7QvIegB5LE3Hnwts
	MD8zk+di/s29sapZXpPapibCGLSXMTeNDLb6sQ5AHr+1IIkvuv1ASDhrpFgd4PUNjwHM0Z5kmd1sK
	0WsrSCBWYKOO/g60QMUzeCqh/fgCRKSQMX71o9Oy4DoahOBgvE8ibOd/aqGmswT5DT+jfw2xX5Rnv
	owSUea5KMw2/aXcX0NQnNRqwK3/WcFSxOehV8uUJh3XDr/KGAA39hsGHPGCLC1ZmNgMmKgMdONoP4
	QRJOgKU5U+nGi3QNdhjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYnN-0008Ua-C8; Thu, 13 Jun 2019 23:06:13 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYnK-0008U9-F3
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 23:06:12 +0000
Received: by mail-qt1-f195.google.com with SMTP id z24so363204qtj.10
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 16:06:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0WB7++WgXsHSMQU/iyYHt1wyyCBYlEx8/DL9NzTbRRs=;
 b=Dcv2ywXK/ZyB8d0UNG/XSqpsuj/lW8twWrUOR3OXKFVE8hhrkYSl38fIcLyslqvvQV
 naXUSMdNv2DZ9TNXEBLvfIQpl6ZPBUWh7TgjZ1D0LmtO70oaPBs5lvextX0EA67arhDc
 aT6YC/Ds2TbEohByhTODG/dCFIlywwww5xVjkRiiogm9C2hewHJeFuDU0kNla1PuNeZI
 VuhbnK7EBHyxx1C53pcpKclvYtT1w/iqtazm2Zm4+XO/2HBaWhfppzGHLA788XBVa9zb
 k37r09SU24dkQ4/TuAKUoNCMSFHWNwHftSmSbVgbJubfCuSdP6Pb5nI+hQqLbFSqWVkG
 SEXA==
X-Gm-Message-State: APjAAAWhktbkfVW+mYfitO8PQha9cW9kqRr1izH/V6xVy3aKXQMUjJnb
 569u1p+z5A0H6f7qkXO0rg==
X-Google-Smtp-Source: APXvYqx+14G87vSF1DTU9nLxwM7+unwwEu2UUz11EbKZ7aTXFmfrxUUj04BpoYDxl/NFoTvXCrZb5A==
X-Received: by 2002:ac8:3301:: with SMTP id t1mr72629681qta.209.1560467169096; 
 Thu, 13 Jun 2019 16:06:09 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id y16sm404646qkf.93.2019.06.13.16.06.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:06:08 -0700 (PDT)
Date: Thu, 13 Jun 2019 17:06:07 -0600
From: Rob Herring <robh@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 1/3] Documentation: dt-bindings: Add
 snps,need-phy-for-wake for dwc2 USB
Message-ID: <20190613230607.GA10347@bogus>
References: <20190520175605.2405-1-dianders@chromium.org>
 <20190520175605.2405-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520175605.2405-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_160610_502548_791DBA4B 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, zyw@rock-chips.com,
 Stefan Wahren <stefan.wahren@i2se.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Alan Stern <stern@rowland.harvard.edu>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, amstan@chromium.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>, Randy Li <ayaka@soulik.info>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, ryandcase@chromium.org,
 William Wu <william.wu@rock-chips.com>, jwerner@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 20 May 2019 10:56:03 -0700, Douglas Anderson wrote:
> Some SoCs with a dwc2 USB controller may need to keep the PHY on to
> support remote wakeup.  Allow specifying this as a device tree
> property.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> For relevant prior discussion on this patch, see:
> 
> https://lkml.kernel.org/r/1435017144-2971-3-git-send-email-dianders@chromium.org
> 
> I didn't make any changes from the prior version since I never found
> out what Rob thought of my previous arguments.  If folks want a
> change, perhaps they could choose from these options:
> 
> 1. Assume that all dwc2 hosts would like to keep their PHY on for
>    suspend if there's a USB wakeup enabled, thus we totally drop this
>    binding.  This doesn't seem super great to me since I'd bet that
>    many devices that use dwc2 weren't designed for USB wakeup (they
>    may not keep enough clocks or rails on) so we might be wasting
>    power for nothing.
> 2. Rename this property to "snps,wakeup-from-suspend-with-phy" to make
>    it more obvious that this property is intended both to document
>    that wakeup from suspend is possible and that we need the PHY for
>    said wakeup.
> 3. Rename this property to "snps,can-wakeup-from-suspend" and assume
>    it's implicit that if we can wakeup from suspend that we need to
>    keep the PHY on.  If/when someone shows that a device exists using
>    dwc2 where we can wakeup from suspend without the PHY they can add
>    a new property.
> 
> NOTE FOR REPOST:
> - In v2 Rob said [1] he'd prefer something based on the SoC
>   compatibility string, but that doesn't work because not all boards
>   will have the regulator setup / board design / suspend logic
>   necessary to make this work.
> 
> [1] https://lkml.kernel.org/r/20190430012328.GA25660@bogus
> 
> 
> Changes in v3: None
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/usb/dwc2.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
