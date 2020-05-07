Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5541C8D2B
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 May 2020 16:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+Ke0B/MEup9id79ikiubdRUZepf2X2B2igLsL9ROzY=; b=kmTwUcZoy1inpu
	nqHoGDD41Z/wpBtbwV0CLuv721SBB5q6inZ2r7k8lJpOk4hXUO/UP5NWf0BsEpV/xljSoOEejgofX
	MXSlKB6UE9RoFR6zzFa6KXZVAltRJAvW+lJrWQMTKaAigZiPILiRo93/l/DOzvOYlJCBJn8S84UqN
	Tu3jri8BhTYMa1aRbVFh2ksODGlK+yd1KbplnYpTd7ZTEUlrEYZwPIogiRroLHhiYASZC8Azp5/81
	6gYeCE/Z9V5BW3khKuPbRWAEuhxnibQk0YCYB4nPiZsVcZmf3qEiZED6zEkNyBaERREFKWwM94Cod
	oRY9JL8gW/strGRTifAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh4a-0005AV-CD; Thu, 07 May 2020 14:00:24 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh4T-00052I-Jc
 for linux-rockchip@lists.infradead.org; Thu, 07 May 2020 14:00:18 +0000
Received: by mail-oi1-f194.google.com with SMTP id t199so5233579oif.7
 for <linux-rockchip@lists.infradead.org>; Thu, 07 May 2020 07:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5obdS31sMzy2WravwryFoBjEaM1odMtdjQvUC4fHdms=;
 b=NfgXft3figcdY3HyDvtFPxMS73acApwUJH3JqbktYmuFZkCTXqzY3ZKZCsLlnSfjWS
 4d8xfUnkzxTuwz17zAcMYKHnFHvBt/3UgmCtZaFK18FmeZUfDyM/D1xEnMjwm4rZgMKP
 0NzTrAMNhhiyUL3q3DwMA4UJGJhpmEFOoqFZ0Eti1Jk6UGqaC6UfbVNpvK6jLC3cseZg
 MM/pqg37Y3IOMILpSF2M/YulZ7xSDragghDXVmqDAn6ixXRzULJXjjiPRviF1BGoasQ4
 NlROb2elDoQiQD63nL7/4VLJSWZHU5hIJdEJgx8qQ/RZESYAfJbqzOPS9I/IkNuF0VVP
 Wp/w==
X-Gm-Message-State: AGi0Pua25PcmkIfYInVj0dcTleBjBWXOzXU3RbvZAaXs2oXthB3WGORM
 xDMA/D5QfU5P4qd5/BREKA==
X-Google-Smtp-Source: APiQypKzzBpzLKb19Oq6n42KnCLxq3n5Ag62OOoby5Ov/MPPD1ziCvGHjfHjs6PTZ8/5D6lB2YO3QA==
X-Received: by 2002:aca:d6c1:: with SMTP id n184mr6603818oig.126.1588860016614; 
 Thu, 07 May 2020 07:00:16 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 60sm1113676oth.38.2020.05.07.07.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 07:00:15 -0700 (PDT)
Received: (nullmailer pid 22066 invoked by uid 1000);
 Thu, 07 May 2020 14:00:13 -0000
Date: Thu, 7 May 2020 09:00:13 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 3/6] PCI: dwc: Skip allocating own MSI domain if using
 external MSI domain
Message-ID: <20200507140013.GA23957@bogus>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574091-240890-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581574091-240890-4-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070017_693820_B862A551 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 William Wu <william.wu@rock-chips.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 02:08:08PM +0800, Shawn Lin wrote:
> On some platform, external MSI domain is using instead of the one
> created by designware driver. For instance, if using GIC-V3-ITS
> as a MSI domain, we only need set msi-map in the devicetree but
> never need any bit in the designware driver to handle MSI stuff.
> So skip allocating its own MSI domain for that case.

A new field isn't needed. Just implement the msi_host_init() hook.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
