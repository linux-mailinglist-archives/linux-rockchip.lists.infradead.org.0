Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645F5134DAE
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 21:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTiz5jsQCTY4mZwdXVshz96YODK+cBL5THyaR0f7zcE=; b=QaBzmBZbj+Y2X6
	BXiWck9Rzj8mfeOHo8kjCQjrBOD6aXLv1/SVI8v2zmUf+Pcb+9PQHGpx5VzUsnjQ9jrPftBeLQcAT
	x9hDEDxE6QO6N3g0OyZ95XuKCVsSrsm4D3vlKIkN3R1eyy9O8YH2RYnI3jzp091D4RGXlqaIZrIH4
	7QzlTl3UNXRaVdI+sy9WnG5mK/1VdqdvId6vIo+MYUsNJ7LvgpE+W2YG0U3i2wny3YazKrkL0mQpp
	NYUKyNtRaUI0PB+hDGqLELL7J2z64A+KW5b8OuqvEV1ggQEHKDXfPCc6fcvNXgE9sWbGWc7yz8X3G
	RN1N1qOexTJyvtXXy+ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipI0a-00064Z-Sq; Wed, 08 Jan 2020 20:32:52 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipI0D-0005ic-Ah
 for linux-rockchip@lists.infradead.org; Wed, 08 Jan 2020 20:32:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id d7so4909460otf.5
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Jan 2020 12:32:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jcxZrCd2+72i2RRqwXRwqBU4vHF81GUXpnT3KHwf8To=;
 b=SWJ/eoHLpoU+QsUU2hEzCFh2Ewz5dYZuNNzQSBiF/e6F9BZT3mnhB5lZ2VOVsosgC0
 FeKszym8kUjhSLHr+aLe5YMzCyP23wk/ZW6E+pu0OQvJheksGiMmSLIgysRo0HOaFTPV
 jpWZcmpSfh7sFsZo/03eRupJj/wplt9AUF5KYw2I+Vo+PKTNNO2ywjruueWlriDtGGMj
 pOCBOeaVxY5bFabQ10lgFJ25F0h3CM2mZAPmde66bOMcQ75eGzbHeC7mwFbqXQILtdUU
 s+GSxnyyUzQj1x7SLziPcVmAnsT+SaVmwvCkEoCk0hqyHh8vAVdAz1si3/H1Y5zNmzia
 cocw==
X-Gm-Message-State: APjAAAUkqXZRDKKRdswiI9PVLVh10gRmY9ADjLVTDJmP4ju/kUl3+/dm
 xi5cXWv7IsfDGN+PyUWrWye+6WM=
X-Google-Smtp-Source: APXvYqyYBvl17X1z55QNCKey9KwzxuMKCubq3yrOKRantjvFbHgV+4eILyLPlmMMe39hKDP8bqkNHA==
X-Received: by 2002:a05:6830:12ce:: with SMTP id
 a14mr5395952otq.366.1578515547823; 
 Wed, 08 Jan 2020 12:32:27 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k13sm1433930oig.24.2020.01.08.12.32.26
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 12:32:27 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 14:32:26 -0600
Date: Wed, 8 Jan 2020 14:32:26 -0600
From: Rob Herring <robh@kernel.org>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 3/5] dt-bindings: add vendor Monolithic Power Systems
Message-ID: <20200108203226.GA17283@bogus>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
 <20200106211633.2882-4-m.reichl@fivetechno.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106211633.2882-4-m.reichl@fivetechno.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_123229_376561_ABB5EBB7 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon,  6 Jan 2020 22:16:26 +0100, Markus Reichl wrote:
> MPS produce power regulators like the MP8859.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
