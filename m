Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE89179569
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Mar 2020 17:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoZvTFnmLxLIa+JQoCJRBtKjRc6fKzCYl9OKl9pXfCs=; b=NP1EqMZAzEqso7
	xejlXi4osTixDM9SFlCyufC2jXLbj4MtvWC8nnLJjEzWvzkzjK51DuIYchpcuqbBW8Kn96FL/w+pT
	aw77BE1D1PidFWPxJ2+Sufn9pG9UJ+96DXMHl/AtpVppx2xxSZT2OzAGUuzRSBNUIKiz4PMYIsefG
	Pg/mi2IFk0Cx9EbwT0jYUpTHLlybbojbCC7J2dzPdMtJqzjbI4dRO++ZlcVkIJw53RQ27/JzkpgEW
	VK7AvANtMGTLSKqXQtvqgu09lFYrPMBNhP3/6TH4j3UFCIdJB1RHjEEJ3yfSHUD+K7UxE8BV3SgzI
	Q8ez6noJZceSt4k/HXaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Wyh-00021X-Vw; Wed, 04 Mar 2020 16:34:35 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Wyb-0001u1-Pi
 for linux-rockchip@lists.infradead.org; Wed, 04 Mar 2020 16:34:31 +0000
Received: by mail-ot1-f66.google.com with SMTP id v22so2595019otq.11
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2020 08:34:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HYgnap7JcbfyJ9LwlrBSQ6khAGsJZr+4LoSP4vff9D8=;
 b=NVvevOaLXILVhzL+mZOee5q1ERJyGmomaMaaUYnQM08yPAdOR0+ChZA6jH7BwaZ0A8
 R7vWHbypj5Ks0UCN+C/yQQQRvGjnnF5oF1e0ec8G7kO/QD2o21eUWqYrUHzSkU0QIL1A
 dGw9TEmvd9tWsiCvSt5a9LLjIl/gynrF5B9CMl9GR0qJ8wW1gXdJlePuuCcNYx4TkKqg
 NPX8FpszlzGrPCE0mxGOeO+7P01HOkALBBwBpIT1rEWUCvH3VYIXkEj7p9FvSocBa6rw
 lKqRGlueUJjOCcSMpFIZWeUf+e77g99oW7y6kqAWyR3rnlV7efiCUd3Db0VXA//+N50Z
 QSkA==
X-Gm-Message-State: ANhLgQ1vDlQ5tV50TceDdB4veuqZR+0d6Aq58yCAjczIP0n7eBjzaNan
 xdysKuv9FoJV/KP76jLvJ7hpn6k=
X-Google-Smtp-Source: ADFU+vt5Q6fikJmgeBqJkMGvP+8/KykDpQZFFE+L6Qzd+haE4wied4mpTIXVkprwHCGx1VthdflbWA==
X-Received: by 2002:a9d:3de4:: with SMTP id l91mr3113287otc.35.1583339668343; 
 Wed, 04 Mar 2020 08:34:28 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w18sm3076845otl.60.2020.03.04.08.34.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 08:34:27 -0800 (PST)
Received: (nullmailer pid 20763 invoked by uid 1000);
 Wed, 04 Mar 2020 16:34:26 -0000
Date: Wed, 4 Mar 2020 10:34:26 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 1/3] dt-bindings: Add vendor prefix for Elida
Message-ID: <20200304163426.GA20664@bogus>
References: <20200229151506.750242-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229151506.750242-1-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_083429_849626_FB14B54F 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 francescolavra.fl@gmail.com, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, thierry.reding@gmail.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 29 Feb 2020 16:15:04 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Shenzen Elida Technology Co. Ltd. is a Chinese TFT manufacturer.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
> Hi Rob,
> 
> as can be seen on [0], Sam expects you to apply the vendor prefix
> to the main dt-tree.
> 
> Thanks
> Heiko
> 
> [0] http://lore.kernel.org/r/20200229125725.GC5447@ravnborg.org
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
