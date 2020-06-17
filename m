Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09BB1FD68D
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 22:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fy5ZhrUwQboNeKum//3saJ/TixukqX2YQSmv0zdNnOs=; b=FhuUxM+BD/O2zy
	pYyIux9eL1MZdVUwYLDKWLn6WZlSIokB9SoC5MsrxOZ/eRfPDO2vx5BH9LoFYFU/+UQALZkCc10eo
	PPYMBShjLem2e2OY1U/icFKT548n1ck5yMlCg9mQRwF3K6kBUURH5qjvaOt+0itWiT8PpVlqgim8k
	JM2siO8RUpLyBmzEyE/Uyg4n9bUbZtq55HoJ0F5ItgIItOeAUOdNmxvV/7nLp2sJVP5nQJClgO25H
	3BCo2aW4iUbI45woDLk3kcvZPj9SC2NVa6hFZcR/EX2EXQXFu1pDmtsV64fduAH24KNi2VczQST9u
	Xh2/l8AFmPirUOtqshxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlf8v-00024E-Vd; Wed, 17 Jun 2020 20:58:45 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlf8t-00023b-Rv
 for linux-rockchip@lists.infradead.org; Wed, 17 Jun 2020 20:58:45 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so4609019ioo.4
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Jun 2020 13:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n5+GZUdirVswnFvU4wT2xx2a+Rw6JyWRfqT+WnLPbag=;
 b=PxZhqsWfboeoLC1HVePiQpulMdPv1J0ZazLUq8tiGDJKsws2a13uD/equenTHO7W13
 DTOTJc2y/eHlxaWeb87k2zP+w3cSBJUAsn4sLOUiloNKkfs8dABAgYd52X4+eKDtz2hT
 iJnzDY4nGr/idPcApfOmVDO5TuAPlhT+fNQnk8KQMlKN549QkUzprk/DFszA77L1mgGr
 jvyzDUtquP99Y+rizZPSdkrktThg109WX0XwPHHYkt98zzW7UX9zby8ey/LAcpyzRbFU
 TmPtIHjFf2QXxC8sq47GZ9MsVrAIjm9o4kmPuTudEBGb51Xm7uCmbWXAOAbSV8bWkOKe
 m8ww==
X-Gm-Message-State: AOAM530xSk0FGClJHHbAhMJyRBAukvCV4I/6ZRVL8/oq73iebcDWjSny
 hQc3EHsDfM7RI4hVuCHCAibDtkoW3A==
X-Google-Smtp-Source: ABdhPJyBGo5Nyzsm6YlLL0e2hYIFFOJ3PgI3JRk3HTg1U92I39z3vyxkZUw8rzafh/O07uJR5W/m2g==
X-Received: by 2002:a02:134a:: with SMTP id 71mr1181745jaz.118.1592427522763; 
 Wed, 17 Jun 2020 13:58:42 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id p11sm539692ioo.26.2020.06.17.13.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 13:58:42 -0700 (PDT)
Received: (nullmailer pid 2800672 invoked by uid 1000);
 Wed, 17 Jun 2020 20:58:41 -0000
Date: Wed, 17 Jun 2020 14:58:41 -0600
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v2 03/13] dt-bindings: dma: pl330: Document the quirk
 'arm,pl330-periph-burst'
Message-ID: <20200617205841.GA2800620@bogus>
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
 <1591665267-37713-4-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591665267-37713-4-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_135843_896148_26B0224A 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 09 Jun 2020 09:14:17 +0800, Sugar Zhang wrote:
> This patch Adds the quirk 'arm,pl330-periph-burst' for pl330.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/dma/arm-pl330.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
