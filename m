Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A48C14594B
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 Jan 2020 17:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2r3pGW2/7GMm95lY8+NmU5jDqgtTvYmuUopAzfotEMQ=; b=VdMW1CDfaOwuda
	qqtuP8dL/znrqx/eGejxalrqzMckoYd8JKVdcgEUNa4UR3WddmlP3xu2RWfLxyTxXj7JXO9WqtnmN
	nPhkHC8J15QsBiltr+lcO/BcqMJFi6kEJZ37ysYs9Ivfj/vdoJKw63gZgyrfVaqBBZUExZ253hlvO
	Ki3gfF8sxFa8Yv7+jP0OHk7fL7SPfAXGn2KTKJbLJu3J2mnUBZuMNSekSaEGqPjUXAEELkXlS8L8l
	mj6eJigTWPwmHU874lZRd3EsnbTGlSjP3K3P/akELbUf2Dt3EOaSN+UCTob/te6vJDHJlnRhUvUaJ
	0+2SJFWZ4xXHnTNydmtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuIVP-0006Cv-IA; Wed, 22 Jan 2020 16:05:23 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIVD-00063q-Cc; Wed, 22 Jan 2020 16:05:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id h9so6672844otj.11;
 Wed, 22 Jan 2020 08:05:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P2nj0uogA4rRFo/vGoXxjKcugggOl6yz11QVdYb92dk=;
 b=Fsxb481fgTfcUugKzVJOIXR0lnBjOPnfEQM4egakFYZ9lYn06dzUx0Tv4FZp1os5QN
 9H604PzjeffGwuHT+5hnbsQjOIthZ386wgfTvACNMRaI2vBZUCwnvj8DlZO5UEc4EINk
 iZtxBZ2mzaYWdJ+4AWHZooRMuo4srZmy0xB31a9Dqnp3TakQAnnPSQ7jBIw7C6XyhK7I
 xO+f6vcapOUF8bY2KxLDO5YyQ4ExU3dcc4/Zt031D4oU7okg/UFjEr8xDBbrv0nK8UjZ
 5wO4pgdM0vrkbqN05aeZLMXis3J4XdlgTkwXEaPgorvToddodoj1AzDal+pSKZuq8U8U
 nuyQ==
X-Gm-Message-State: APjAAAU+wFB1gtHezBBYEjJWZeuFvTOVqIJAZQTh5C/rYb/JaQMKIjDo
 SAgbvZ2ElpyjP4J77f0OOw==
X-Google-Smtp-Source: APXvYqyrhkKZuH0Rsv16TrhCL+xfS8KG9mD/Inml67F3FVNPVpf7HCEz4as/foIuTdlUwhiChYJj8g==
X-Received: by 2002:a9d:60c4:: with SMTP id b4mr8167324otk.166.1579709110222; 
 Wed, 22 Jan 2020 08:05:10 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a19sm14764576oto.60.2020.01.22.08.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 08:05:09 -0800 (PST)
Received: (nullmailer pid 9378 invoked by uid 1000);
 Wed, 22 Jan 2020 16:05:08 -0000
Date: Wed, 22 Jan 2020 10:05:08 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
Message-ID: <20200122160508.GA9316@bogus>
References: <20200116152230.29831-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116152230.29831-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_080511_431409_75E5DA0F 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 heiko@sntech.de, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 16:22:28 +0100, Johan Jonker wrote:
> Current dts files with 'dwmmc' nodes are manually verified.
> In order to automate this process synopsys-dw-mshc.txt
> has to be converted to yaml. In the new setup
> synopsys-dw-mshc.yaml will inherit properties from
> mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
> 'dwmmc' will no longer be a valid name for a node and
> should be changed to 'mmc'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/mmc/synopsys-dw-mshc-common.yaml      |  68 ++++++++++
>  .../devicetree/bindings/mmc/synopsys-dw-mshc.txt   | 141 ---------------------
>  .../devicetree/bindings/mmc/synopsys-dw-mshc.yaml  |  70 ++++++++++
>  3 files changed, 138 insertions(+), 141 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
