Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBFD127764
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Dec 2019 09:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IX51RNeINLz7ZE4XhU3BQimol5ocdyXFBebCU4Bj52A=; b=nf3r1Y1ajC/yBD
	V6GuWSOJ6+LTpFUzSW4yrc0taYJw8QBCuo02c9u9Xf++za0Sj5UN/Q1hbByF8D7uLzefMTPTwQDJn
	D+YSEvpNgA9nILmL9Qzr3JIS+MWm4trqaGnjFTqkNcGOwsHbsVOUD1Z+E9NHpce3Q+022sKjnUIG1
	u+WwnBv7XlofbZmdCw/Npvh0oJ99LKtJuuPipIzg7a4SSBcH+BWTS1Sp9K7T0MSlp8mZfCEbD5i8B
	xbhxsFASOIVnDAf8dsVZd08Y1uuhW1i34udsWo7ucLmah+I4MsES7FBJ6JpV9CNLXqDBKWrvhRtt6
	65+B9eTkvKSkPeNx8EFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDtH-0002dq-P9; Fri, 20 Dec 2019 08:44:07 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDt5-0002U4-Vd; Fri, 20 Dec 2019 08:43:57 +0000
Received: by mail-ed1-f68.google.com with SMTP id e10so7476504edv.9;
 Fri, 20 Dec 2019 00:43:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IXbuaf/Cq2tGfd6OZrRmEJyDn3Ce5xlbWFBppOEzCYc=;
 b=Ez2dDxxuvHv+1EOIG9LKlBbzKSc3gSydt5G7cFNdQknaZG+lSpz6c5803QbW5VkV42
 uKz8QGuEu9ubkABhcto8ETuH4mV3t0PlFuYWtwiP5FyLwNPcK5CtYK5+w1+cMfJPjrLk
 pl/9vlTNTCd0tx2ql3hGeif/GSr8tHkeEvfF9YJYDGNxC2MYK4GNhIb14g0Q7BrTBZRk
 2LNVS85tEzppqFPPW9uJZiryEVpbSlLu9PnZ1XeP4Xv2C9Sq7ZMeGSWxpAJVxYpBN4Ru
 6P9149l+l+I/Jc+zXblmTfqMxAK4mKLiQGWzlzTkeUV0T9RU+GIQM3MJPzgDnQxoW/FI
 YoGw==
X-Gm-Message-State: APjAAAUpMHzKoR67Fy9YGizmpP1Z/Sz1ZLfyHtjrbVyrmf1q8sU7friD
 zOO9d2ncuehsL19XwbBjDDI=
X-Google-Smtp-Source: APXvYqxp9hgF9PmaT2oTuADAB64PkgIFMZvrclHRsxE6EbN2yuHZHHK9cKtisRYEhpTDGewTtbAR7A==
X-Received: by 2002:a17:906:b797:: with SMTP id
 dt23mr14655260ejb.241.1576831434074; 
 Fri, 20 Dec 2019 00:43:54 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id u23sm842501edq.74.2019.12.20.00.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 00:43:53 -0800 (PST)
Date: Fri, 20 Dec 2019 09:43:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH v2 04/11] dt-bindings: devfreq: exynos-bus: Replace
 deprecated 'devfreq' and 'devfreq-events' property
Message-ID: <20191220084350.GA20583@pi3>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p3051f7916542b7234aac5273e0baab83b@epcas1p3.samsung.com>
 <20191220002430.11995-5-cw00.choi@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220002430.11995-5-cw00.choi@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_004356_018068_9EA4706B 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, myungjoo.ham@samsung.com,
 robh+dt@kernel.org, kgene@kernel.org, kyungmin.park@samsung.com,
 leonard.crestez@nxp.com, lukasz.luba@arm.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 09:24:23AM +0900, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq' and 'devfreq-events' property,
> replace with new following properties
> - Replace 'devfreq' with 'exynos,parent-bus' property
> - Replace 'devfreq-events' with 'exynos,ppmu-device' property
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../bindings/devfreq/exynos-bus.txt           | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
