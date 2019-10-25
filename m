Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4F1E55E3
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 23:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiI6/KnuflJbkyJdpJIr6to8VvQLlDZZQ7z+R/kZHsk=; b=qC3KRmlF4nP0bM
	onJl2FfhhXa09XCgnLpV7KS4GufiEEgmHcmNldYWch84RUTIUCVlacCp8wRQSbalPf4fkYvVIsQMZ
	474vVw0vACRqxMHykksItllBT5EsatKnvHL7f8HhH6S2GZPQWqgiOx7OSNrg9WiAbHdCVJglwfHBy
	s9zGQRt5o6ECRNk1Jeayb/mJOeP0sCUFUcDB1BUePHL0XyOT4uYdZnobGE29BjRLxXDjYonWfowFQ
	GM8m7lulsPdxMKWcDYmXQSGIlmDuVixNIzfUGfneJ4atUoNmbzGE9s0Zr75EPG43H2P6PpHAFhGiW
	MkmweTaP/krcFT2PJbyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7Cp-00020s-3y; Fri, 25 Oct 2019 21:33:11 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7Cb-0001ne-Hm; Fri, 25 Oct 2019 21:32:58 +0000
Received: by mail-ot1-f68.google.com with SMTP id b16so3015771otk.9;
 Fri, 25 Oct 2019 14:32:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z0Dfu2WmLrW82obqVEzdgL4RLEpx99A6YNjCZkr1AdY=;
 b=QSPu8zUbtF7ql2T2p/jUNbtf9DEjioJ/7ZjD8PPLa8Ob/yXl/2R7emwJUxs+T9mO2r
 WY+T5CKHBr9OiTu25hF5BugKnaU9rCSXCleMY6YUb2xSWun/Jvo5WLbunKfbgxVquEOS
 pdTgimr4REjSuj0Ve3ctVbzchJKj7slqO9b/3CQJ7ZFHg8PmKmnaTioEQPYn+nLvw4sq
 52SJIH8jVm3bl9P49WdizDavHuArTq+3t/2SnZkkwSEHXm8urIDKNg2MnA1fAJDKrdzY
 WNisj0iXDw2dbRd8tJC9NU/xdXitRGf0NW6xD6YzEu84BjDap66QK25TePmjKNCFG/6t
 ASmw==
X-Gm-Message-State: APjAAAVAoViRrboVRbfdNStyen8YDGV8WEKdrydRyUPSwZYL753UK+fI
 1onKhEw8XBcAEv4SdVumzA==
X-Google-Smtp-Source: APXvYqz5bA/sDLT9LYdiIgseo6TuDUbb3NL+cEtzFm8N8YSHB9VLO4PAlGBNFEbX6YVVd8nSUc1Qdw==
X-Received: by 2002:a9d:65cb:: with SMTP id z11mr737532oth.195.1572039176538; 
 Fri, 25 Oct 2019 14:32:56 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e102sm1132401ote.78.2019.10.25.14.32.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:32:55 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:32:55 -0500
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: Add doc about rk3308 General
 Register Files
Message-ID: <20191025213255.GA21912@bogus>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
 <20191021084555.28356-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021084555.28356-1-andy.yan@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_143257_590692_08E74987 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 16:45:55 +0800, Andy Yan wrote:
> RK3308 GRF is divided into four sections: GRF, SGRF,
> DETECTGRF, COREGRF. This patch add documentation for
> it.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2: None
> 
>  .../devicetree/bindings/soc/rockchip/grf.txt          | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
