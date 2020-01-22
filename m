Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F114145956
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 Jan 2020 17:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8FHbtoNiBmY21CIlo06VBwmFx1yAMW7mUseyBKlZW0=; b=qr+5fgxd6Mah+d
	WCGuEeAYOFF7z9kQwAttIZYOiMRKB5r1kkWHvVvl1SbBK+Rsw6jHzZQ74OsWDD5JfN7d6hTF4KsW2
	Dj6osWyJpcC3ucqRJhHktclEWJu9ZNTNxUn2SxVBMFWgCxSm6VR+UDg1X40K8U7GklxRqH1zJn2TM
	/QlWcBqlyptTpEIf2/FfDU/IRFImAyYCTessaa1GLOdA56odh3i6A9pJVu/+ETN7pA6J4BVNadab8
	g9RjGMpOsVVwLR1CPEgmbxb5ibkULa8OCpwHJ1IbeIGQcZNPgrTFW3Kv03659Y7ZhejuZLE/Jr9Ep
	/7M+hq6sDJxefcDtYz/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuIWO-0006rK-1D; Wed, 22 Jan 2020 16:06:24 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIVw-0006UF-4Y; Wed, 22 Jan 2020 16:05:57 +0000
Received: by mail-ot1-f68.google.com with SMTP id h9so6675459otj.11;
 Wed, 22 Jan 2020 08:05:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BADTgUineejOK2n1J7lKkTEFQH19K5N1CEhgckXRAeo=;
 b=HnDay6qZK6afylP8ND8xyQzb89uOU98kzYVWgNgaqyotk1LnW2qTPMcRGGpBwMGOWQ
 0tClsnGUJtS+14hZkhd4QYZB0KJjqk6JXmCgZAEDf0A5x6T8AU6bE27TilLC6epbwd79
 TWDszHaPGRuCj2gZPUViDwY1VRh+H9+HaJSRqBqm8ASn/nqH0qGcu190OWzQTXnQiVZf
 /MTZ9sdJFFwMEZ00kuTCmzblE540XpHMNczpDWH3JB4OjH15ftZebH8dz4Q659BRIPAE
 ZLl5ymQNh2FrGWssK2RntO95y/sau4m6tb2yhQ+D7kyWOa0Qd5Lh/sUre7uZdcGvJIq+
 +JsA==
X-Gm-Message-State: APjAAAXj789mAuTwaASkw8AePYi1It9yHRunq8d/887ID5Y/11F2PFEP
 jMVa7Na6ZV8gg4oF9rlSiQ==
X-Google-Smtp-Source: APXvYqzU2mv1jLT2PDfalGIskqeW8nSLgN1KpqimkaMRG6wWiRuYAxbX9pFvaWjoXG/gl6a0X2+rRw==
X-Received: by 2002:a9d:75da:: with SMTP id c26mr7977313otl.40.1579709154723; 
 Wed, 22 Jan 2020 08:05:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a17sm14694628otp.66.2020.01.22.08.05.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 08:05:54 -0800 (PST)
Received: (nullmailer pid 10857 invoked by uid 1000);
 Wed, 22 Jan 2020 16:05:53 -0000
Date: Wed, 22 Jan 2020 10:05:53 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: mmc: rockchip-dw-mshc: add
 description for rk3308
Message-ID: <20200122160553.GA10824@bogus>
References: <20200116152230.29831-1-jbx6244@gmail.com>
 <20200116152230.29831-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116152230.29831-3-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_080556_183245_D34E2A76 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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

On Thu, 16 Jan 2020 16:22:30 +0100, Johan Jonker wrote:
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc"
> for mmc nodes on a rk3308 platform to rockchip-dw-mshc.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
