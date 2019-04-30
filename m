Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90D7EE56
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 03:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuGKMDVzjK5zsAVDTur2mGLXBm5+H5BWbTBm94Wby0Y=; b=TWKRtiuA2d1eBT
	3Bp92/tLd23i3gNtT7hpWapHdNQ61JiafVOzP95agrSkmrBC1TSv5kno3tvz4eyrJ9io4GDWRkqWT
	/Hq7kCarvQc5QbPFkP0SeKJBSX5lgDHNVjcBnFV4WPUlcbq6ULfXAusbB1w8iK3or4/hZ2gD+hyYb
	9mcTyriy4U9Y/Ozq1DVeUeyOB+95ktPOxy/oI68NF7KbJajaTUh0uj00V6ggo+1Z5MblBg8GdyXDX
	h6Zq7cpBXnKvomkLnKf2nd0hnTzMlYy8wJxR35hbE2SN4Xu645t7RWg2gwzXNA21v2qiTWlw7nTjS
	uecGRCgifzN0cH4+O7pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHUd-0002uM-HC; Tue, 30 Apr 2019 01:23:35 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHUa-0002tO-12
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 01:23:33 +0000
Received: by mail-ot1-f68.google.com with SMTP id a10so1650498otl.12
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 18:23:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fLCNptbAqgGLbxmiV5m9esJWTcO9d7PGiLKbWNbQI4Y=;
 b=otj2gsQ1FjfjzlPVWncpqdVC9sXQu+QNEMmJLt9NdNwL6x38rpn5Ob2hcISJMbT8PJ
 T6OYzTJAtJO5FEsZL9gA/wVg2P3MM3WlaDaTrbH2WG5CUAsNQhW94iCpewh1in1eTqC9
 OeE82LW06HxMKvfmvPfccCkIqX7pcC5+NMCtOER5TDXFRpG85TcR0SN2mOr4APcyOADE
 cP/QlwDT9/yq1g4Mf/asHlpVbEyrdzFd0pXBhaePmN1o+BcmTIfb3iVgnuanMfYOTq4C
 Dewu+3a6hANCQ125ebfzmTpCnNmWWE2ycjRKkEYNFtCuzAYrzvbZixbWll12+5N0r8bp
 eWJg==
X-Gm-Message-State: APjAAAUkD246pg0Scgrb1irm+obQdzesHtjvJxHFwbjLmDvc30A2amHc
 vV/iSsTlAtWTfRJTPMPnpI6pww1CxA==
X-Google-Smtp-Source: APXvYqxr8Cm+FM9VThpkbETtAkluspE6CKnCHzDXX3Pa3YrGOQn38oLZRa/gk3PUp+5WlkzbxZyFuQ==
X-Received: by 2002:a9d:6153:: with SMTP id c19mr5171001otk.110.1556587410598; 
 Mon, 29 Apr 2019 18:23:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w13sm922030otl.26.2019.04.29.18.23.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 18:23:29 -0700 (PDT)
Date: Mon, 29 Apr 2019 20:23:28 -0500
From: Rob Herring <robh@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 3/5] Documentation: dt-bindings: Add
 snps,need-phy-for-wake for dwc2 USB
Message-ID: <20190430012328.GA25660@bogus>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-4-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418001356.124334-4-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_182332_069243_9A08FBBF 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree@vger.kernel.org, zyw@rock-chips.com,
 Stefan Wahren <stefan.wahren@i2se.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Alan Stern <stern@rowland.harvard.edu>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, amstan@chromium.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>, Randy Li <ayaka@soulik.info>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, ryandcase@chromium.org,
 William Wu <william.wu@rock-chips.com>, jwerner@chromium.org,
 dinguyen@opensource.altera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 05:13:54PM -0700, Douglas Anderson wrote:
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

1b. Use SoC specific compatible strings to enable/disable remote 
wake-up. We can debate what the default is I guess.

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
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/usb/dwc2.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
