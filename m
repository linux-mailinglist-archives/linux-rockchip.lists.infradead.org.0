Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEADA12564F
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Dec 2019 23:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WN8zyAbaN3H+xi1tIds+izV8iYSNe+0N66WMd6JUFzk=; b=n7zCJmluJQO+fM
	PGnBc5oagXH+VXqqbI64yogfxwtqYxM7R4qvRNbx75BcFXIghta0h9ZmJy9IP08f6KakTcYeRZsD3
	czpJ2V64HuN1ObK3ypWgY24HakvyZzmC5wKz5oDT6zx5Wb75M8EWQmx2U1w1n3pKypADD8/i2+0GO
	ohzniMnveamajsrQl/IKlq4Go8W8DRokKLW7EH9eMFuOXXrZ9AZTypz5fN99IEBZsBXiP2as/NZHp
	aFoHeu5f6dTfhYRArZWEtxn0KYcEEZkOIutHBgxiReGt9JjrQ70qK/FzjDNHY+WkvbpgcSQT4/yKe
	Fh7o0xGzSRKYyte8Y/GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhVo-0003Ey-5D; Wed, 18 Dec 2019 22:09:44 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhPr-0004k7-9U
 for linux-rockchip@lists.infradead.org; Wed, 18 Dec 2019 22:03:37 +0000
Received: by mail-ot1-f65.google.com with SMTP id 59so4298617otp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Dec 2019 14:03:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qCCYItpj+3VsG3DKSCp5gCe88YZojJMWbpQw+wbr1Yw=;
 b=eLg/PJG8rPaxDVf1OlMjjL2Bj3Sc3VEH87T6otupi7o7BYsWDbRGY8Wz2dj64uoDop
 iKChQaFR662j8Kc1dHMNtzI06b/kK9+YN7YklwsgxzyWFvlQe7X2xS9PccepStE0Bc6T
 2/gzJOCS1MOOTU7ek5JJJ6qUKQ+a/EqdS/NG60e8bvpDY4g3k1k0JwZETN9QemGiFH4h
 LCJBZ9EZmrZ/+FZs8rFPdtD4OBXcvIoMARbghyjTuDUuqgM8pulMJgP+Ct5AZAUB8fqb
 SIq26hXWlz3nb0uuw/7F+JnUI1dj80HLemlNAXOVYoiiKP2R42j/D0Iy/6sqfnQxHIZH
 BnHw==
X-Gm-Message-State: APjAAAWxTwvW2i7Aroq2e98y2UnJ4QQTRGHoGyeaaXdm7Qi5uICqdLDE
 d4na49VKT0LejyILG22SHg==
X-Google-Smtp-Source: APXvYqwkQ1gEbk+bOgm2/fXfvDu4L5fE9n6LUxXNNWIUZdfBZtYFpFr/3T3xbcmVF7Tzj5vHc26FTg==
X-Received: by 2002:a05:6830:1499:: with SMTP id
 s25mr4838252otq.223.1576706614162; 
 Wed, 18 Dec 2019 14:03:34 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m2sm1253207oim.13.2019.12.18.14.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 14:03:33 -0800 (PST)
Date: Wed, 18 Dec 2019 16:03:32 -0600
From: Rob Herring <robh@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 5/7] media: dt-bindings: rockchip: Document RK3399
 Video Decoder bindings
Message-ID: <20191218220332.GA3813@bogus>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-6-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213125414.90725-6-boris.brezillon@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_140335_338270_D85C9AA5 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 13:54:12 +0100, Boris Brezillon wrote:
> Document the Rockchip RK3399 Video Decoder bindings.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v3:
> * Fix dtbs_check failures
> ---
>  .../bindings/media/rockchip,vdec.yaml         | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
