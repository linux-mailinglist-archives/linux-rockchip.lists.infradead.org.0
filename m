Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7EDB6A7
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 20:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAzsmnZVDSVFnnHC6OYQa+Jr7x7XBJOOhIzrQ3YBTNc=; b=G3Da9nCg2xlm+z
	0SlrNE5l8L2yxSDinmPQLVF44huF3tGiD4aRKuODRJg0yt/DRJKcTSl9gL6ipiKqChh7NuihSTUMl
	F7wKSqP8s9EAmouJtORB0ICRek6tho9P1ZcDpJDi4QU1v1I4shhVtokeCkz6Vzmhhdh92oDElLhy5
	tNqQswci0J1UmOhD2W+NO0nJSEAdTj28HxpdFUIjvk3vtJrRm+fH2jP0Vcyba3sTpn5TJYdbW/h/x
	TUi0FSIIdpx8M0Xa+fH6VyKQH69xoUdetmtNQ/yTgGGT9COdvNggL6Z/eiEFWPRIfq+W2XwjIbqkY
	Vj1+nvUf315KgVr6G5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAxM-0005MJ-Q2; Thu, 17 Oct 2019 18:57:04 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLAxA-0005Ee-ND; Thu, 17 Oct 2019 18:56:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id e11so2829887otl.5;
 Thu, 17 Oct 2019 11:56:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3Fc38+M9QiuJWJ5bSxWUqm/GfDV9tM6bLCfP5yDAQu4=;
 b=IOz5RGveIsvDB07mv7E1vWakAxfOGc4woParPlbT+SheQ/dRuelAkpjxBDuleW6ePt
 nGzqN38429Hjd1QAo/TAP/k5ZytVM/xbUjMvFli1jO2R/XWsYp9paF48JcsFiLSuc4e5
 SKi/29s3YgJ/x6npSOMnYCUsI5phFOHQsb6G+A2DCq1j12fzg+rbDald2dCf2E4Pifal
 GWtDDy4OC+O2HpqgXbcDmqrFA7IT6xFpF+bqdTW0VLCghglhnGd0MOWGqcYdascCNxwW
 7G9q6kNDyLCP3pHf1UtbJmyggASdZYCm4qLSDTnQRBDEAYjTGYX4ZbLBunnDbkRoeBkD
 kO1Q==
X-Gm-Message-State: APjAAAV+dhQ62+FOHIFzT4My9LiOfUPO1HydbGXsBannnqYQ+Go+8DVV
 X0MWp9BIMHL/jF2e8YR1Vw==
X-Google-Smtp-Source: APXvYqznvoEPT7Cp4jUGuXvKWaDvvH7w8OzZ0eUlLqQksAYg2hD6Nzt4mUva2/kQnxpZohuhBld+Tg==
X-Received: by 2002:a05:6830:1e59:: with SMTP id
 e25mr4338739otj.340.1571338610458; 
 Thu, 17 Oct 2019 11:56:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 81sm824363oth.53.2019.10.17.11.56.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 11:56:49 -0700 (PDT)
Date: Thu, 17 Oct 2019 13:56:48 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: ARM: rockchip: Add Beelink A1
Message-ID: <20191017185648.GA29049@bogus>
References: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_115652_760278_102EC860 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 23:19:04 +0100, Robin Murphy wrote:
> Add a binding for the RK3328-based Beelink A1 TV box.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
