Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E551418FDC6
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Mar 2020 20:36:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkfZU6XfKEqDJDf856D6+KsZdrgyj66Me+ojelBw69Q=; b=FQygfZOp4ckW+e
	dgJWLWPtYMRmIQnYXkhfuAK7LlYxpfPav3VX72L+JKMstXqsA0VGuL1fTew0y1h8b5C5aTIY6Jm/T
	oNjpqGMKjAUNzkQ2111TUn5MRJ0kOaML/2aMipcOJIIu3Vw8F2+YXZ0HeC7XADmDA25EyluLLDw97
	x69u8u7IPo7xh12vDA9Fhfru6kKWNRNAlDMX4lxJY1lkNnZnQNvf/yLVAjb4xW0vSJ/L32KDV/SPk
	TPsU9ODQvAcSawNeh5ZArDSz/h5GnmseuCWTSNlcG2xeUbaMqyNBcX0ATu9vC2+aqiAjheFw3QYj5
	Aq2PIB1TLOlPahyFuwaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSs2-0002lr-QE; Mon, 23 Mar 2020 19:36:22 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSrk-0002cs-Th; Mon, 23 Mar 2020 19:36:06 +0000
Received: by mail-io1-f68.google.com with SMTP id m15so10530665iob.5;
 Mon, 23 Mar 2020 12:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3mkiUpmYaWqeC/9fVOMmUolcEDs7SdX572qqK/WHG1k=;
 b=CCpfxoPv4DohmtvVEGKpRzgD5Z9t6midU5BNkeGBP3PDAXzOVy2ORCnlGzLbSMkVEy
 oSKf5Laq9UGc0vfqq2Jb5pRoIqxa5a6YRKRmGQ5GuGauhjhoxQ60l5XbIIK5w74gze1g
 QQJpDwwCzgYj85uIjm5at52pYCzkLfN+Kf1PTmwQ1EM0dRTJpv255Y/PQlpOGMJLznDZ
 B3nAVfpBLib4/CZt8mtBvTZYD8tOUz6OybGNRB4tol1htlvNvad84dGTBGF8Rt3dl35A
 ZmjflpBw3adt9NbWmQZFnfOtcEThfuFBkcR4iMfRTuTDmg56RGRsg7mFu9PN105NiP/T
 BO3g==
X-Gm-Message-State: ANhLgQ3XHy1IwEqepbLEk6sGHE6qsqGG4KCRPCTKQ8eaE/9Q71TpKQFh
 WcTZCqfi3Dkped+yPnK3jw==
X-Google-Smtp-Source: ADFU+vtIcAv5y12f47+MkcXTNTAvWLJ98g9D7CVFcGDkK6sgqnjzg0FRX1r8Nvkvjh9Ami3EEIH0qg==
X-Received: by 2002:a5d:8d90:: with SMTP id b16mr21124412ioj.9.1584992163562; 
 Mon, 23 Mar 2020 12:36:03 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id y1sm4614140ioq.47.2020.03.23.12.36.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 12:36:02 -0700 (PDT)
Received: (nullmailer pid 6841 invoked by uid 1000);
 Mon, 23 Mar 2020 19:36:01 -0000
Date: Mon, 23 Mar 2020 13:36:01 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1] dt-bindings: display: rockchip: convert rockchip vop
 bindings to yaml
Message-ID: <20200323193601.GC8470@bogus>
References: <20200306170353.11393-1-jbx6244@gmail.com>
 <590762ab-db79-c8b1-7f0e-b653ed4b1721@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <590762ab-db79-c8b1-7f0e-b653ed4b1721@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_123604_962184_B86FFA3B 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, airlied@linux.ie,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 07:55:22AM +0100, Johan Jonker wrote:
> Hi,
> 
> Question for robh:
> 
> In the old txt situation we add/describe only properties that are used
> by the driver/hardware itself. With yaml it also filters things in a
> node that are used by other drivers like:
> 
> assigned-clocks:
> assigned-clock-rates:
> power-domains:
> 
> Should we add or not?

Yes, only pinctrl properties are automatically added.

We could change 'assigned-clocks', but for now I think they should be 
added.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
